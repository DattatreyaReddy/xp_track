import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/utils/extensions/custom_extensions.dart';
import '../../../common/utils/misc/toast.dart';
import '../../../core/controllers/settings_controller.dart';
import '../../domain/account.dart';
import '../../enums/account_type.dart';
import '../../service/account_service.dart';
import '../color_selection.dart';
import '../icon_and_name_selection.dart';
import 'widgets/account_type_selection.dart';
import 'widgets/upsert_credit_details.dart';
import 'widgets/upsert_split_details.dart';

class UpsertAccountWidget extends HookConsumerWidget {
  const UpsertAccountWidget({super.key, this.stepData});
  final Account? stepData;
  @override
  Widget build(context, ref) {
    final defaultCurrency = ref.watch(defaultCurrencyProvider)!;
    final account =
        useValueNotifier(stepData ?? Account.empty(defaultCurrency));
    return Scaffold(
      appBar: AppBar(
        leading: CloseButton(onPressed: () => context.pop()),
        title: Text(stepData == null
            ? context.l10n.addAccount
            : context.l10n.editAccount),
      ),
      persistentFooterButtons: [
        FilledButton.tonal(
          style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(48)),
          onPressed: () async {
            if (account.value.name.isBlank) {
              ref.watch(toastProvider(context)).showError(
                  context.l10n.nIsRequired(context.l10n.accountName));
              return;
            }
            await ref.read(accountServiceProvider).saveAccount(account.value);
            if (context.mounted) {
              context.pop();
            }
          },
          child: Text(context.l10n.save),
        )
      ],
      body: ListView(
        children: [
          const Gap(16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: HookBuilder(builder: (context) {
              final iconValue =
                  useListenableSelector(account, () => account.value.iconValue);
              final accountName =
                  useListenableSelector(account, () => account.value.name);
              final primaryColor = useListenableSelector(
                  account, () => account.value.primaryColor);
              final secondaryColor = useListenableSelector(
                  account, () => account.value.secondaryColor);
              return IconAndNameSelection(
                labelText: context.l10n.accountName,
                icon: iconValue,
                name: accountName,
                primaryColor: primaryColor,
                secondaryColor: secondaryColor,
                onIconChanged: (value) => account.value =
                    account.value.copyWith(icon: value.codePoint),
                onNameChanged: (value) =>
                    account.value = account.value.copyWith(name: value),
              );
            }),
          ),
          const Gap(8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: HookBuilder(
              builder: (context) {
                final primarySelectedColor =
                    useListenableSelector(account, () => account.value.color);
                return ColorSelection(
                  selectedColor: primarySelectedColor,
                  onChanged: (value) =>
                      account.value = account.value.copyWith(color: value),
                );
              },
            ),
          ),
          HookBuilder(
            builder: (context) {
              final includeInBalance = useListenableSelector(
                  account, () => account.value.includeInBalance);
              return CheckboxListTile(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                checkboxShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                controlAffinity: ListTileControlAffinity.trailing,
                title: Text(context.l10n.includeInBalance),
                value: includeInBalance,
                onChanged: (value) => account.value =
                    account.value.copyWith(includeInBalance: value.ifNull()),
              );
            },
          ),
          const Gap(8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: HookBuilder(
              builder: (context) {
                final accountType = useListenableSelector(
                    account, () => account.value.accountType);
                return AccountTypeSelection(
                  accountType: accountType,
                  onChanged: (value) {
                    account.value = account.value.copyWith(
                      accountType: value,
                      creditDetails: value == AccountType.credit
                          ? CreditDetails.empty()
                          : null,
                      splitDetails: value == AccountType.split
                          ? SplitDetails.empty()
                          : null,
                    );
                  },
                );
              },
            ),
          ),
          const Gap(16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: HookBuilder(builder: (context) {
              final accountType = useListenableSelector(
                  account, () => account.value.accountType);
              final splitDetails = useListenableSelector(
                  account, () => account.value.splitDetails);
              final creditDetails = useListenableSelector(
                  account, () => account.value.creditDetails);
              return switch (accountType) {
                AccountType.debit => const SizedBox.shrink(),
                AccountType.credit => UpsertCreditDetails(
                    creditDetailsDto: creditDetails ?? CreditDetails.empty(),
                    onChanged: (value) => account.value =
                        account.value.copyWith(creditDetails: value),
                  ),
                AccountType.split => UpsertSplitDetails(
                    splitDetailsDto: splitDetails ?? SplitDetails.empty(),
                    onChanged: (value) => account.value =
                        account.value.copyWith(splitDetails: value),
                  ),
              };
            }),
          ),
        ],
      ),
    );
  }
}
