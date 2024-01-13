import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../common/constants/currency_symbols.dart';
import '../../common/utils/extensions/custom_extensions.dart';
import '../../core/controllers/settings_controller.dart';
import '../routes/routes.dart';
import '../widgets/currency_card.dart';
import '../widgets/intro_nav_buttons.dart';
import '../widgets/label_text.dart';
import '../widgets/responsive_intro_widget.dart';

class SetupCurrencyScreen extends HookConsumerWidget {
  const SetupCurrencyScreen({super.key});

  String? getCurrencyNameFromLocale(String locale) {
    final simpleCurrency = NumberFormat.simpleCurrency(locale: locale);
    if (supportedCurrencyMap[simpleCurrency.currencyName] != null) {
      return simpleCurrency.currencyName;
    }
    return null;
  }

  String? getSystemCurrencyName(BuildContext context) {
    if (!kIsWeb) {
      final platformCurrencyName =
          getCurrencyNameFromLocale(Platform.localeName);
      if (platformCurrencyName.isNotBlank) {
        return platformCurrencyName;
      }
    }
    final locale = Localizations.localeOf(context);
    return getCurrencyNameFromLocale(locale.toString());
  }

  @override
  Widget build(context, ref) {
    final defaultSelectedCurrency = ref.watch(defaultCurrencyProvider);
    final selectedCurrency = useState<String?>(defaultSelectedCurrency);
    final resultCurrencyList = useState(supportedCurrencyCodes);
    final focusNode = useFocusNode();
    final searchController = useTextEditingController();
    useListenable(searchController);
    useListenable(focusNode);

    useEffect(() {
      if (defaultSelectedCurrency.isNotBlank) {
        selectedCurrency.value = defaultSelectedCurrency;
      }
      if (selectedCurrency.value.isBlank) {
        Future.microtask(() {
          final systemCurrency = getSystemCurrencyName(context);
          if (systemCurrency.isNotBlank) {
            selectedCurrency.value = systemCurrency;
          }
        });
      }
      return null;
    }, [defaultSelectedCurrency]);

    useEffect(() {
      final query = searchController.text;
      if (query.isNotBlank) {
        final filteredList = supportedCurrencyCodes
            .where(
              (element) =>
                  element.query(query) ||
                  (supportedCurrencyMap[element]?.name.query(query)).ifNull(),
            )
            .toList();
        resultCurrencyList.value = filteredList;
      } else {
        resultCurrencyList.value = supportedCurrencyCodes;
      }
      return null;
    }, [searchController.value]);

    return ResponsiveIntroWidget(
      showMiniLogoForMobile: true,
      isMobileScrollable: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelText(label: context.l10n.currency),
          const Gap(8),
          if (selectedCurrency.value.isNotBlank) ...[
            CurrencyCard(
              currencyCode: selectedCurrency.value!,
              selectedCurrencyCode: selectedCurrency.value!,
              systemCurrencyCode: getSystemCurrencyName(context),
            ),
            const Gap(8),
          ],
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: TextField(
              controller: searchController,
              focusNode: focusNode,
              autofocus: false,
              decoration: InputDecoration(
                hintText: context.l10n.searchCurrency,
                hintStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                isDense: true,
                prefixIcon: const Icon(Icons.search),
              ),
            ),
          ),
          const Gap(8),
          Expanded(
            child: ListView.builder(
              itemCount: resultCurrencyList.value.length,
              itemBuilder: (context, index) {
                return CurrencyCard(
                  currencyCode: resultCurrencyList.value.elementAt(index),
                  selectedCurrencyCode: selectedCurrency.value,
                  systemCurrencyCode: getSystemCurrencyName(context),
                  onCurrencySelected: (value) => selectedCurrency.value = value,
                );
              },
            ),
          ),
          if (!focusNode.hasFocus) ...[
            const Gap(16),
            IntroNavButtons(
              onPressedPrevious: () => context.pop(),
              onPressedNext: () {
                ref
                    .read(defaultCurrencyProvider.notifier)
                    .update(selectedCurrency.value);
                const SetupAccountRoute().push(context);
              },
            )
          ]
        ],
      ),
    );
  }
}
