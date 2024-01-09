import 'package:flutter/material.dart';

import '../../../common/constants/currency_symbols.dart';
import '../../../common/domain/currency_info.dart';
import '../../../common/utils/extensions/custom_extensions.dart';

class CurrencyCard extends StatelessWidget {
  CurrencyCard({
    super.key,
    required String currencyCode,
    String? systemCurrencyCode,
    String? selectedCurrencyCode,
    this.onCurrencySelected,
  })  : currencyInfo = supportedCurrencyMap[currencyCode]!,
        selectedCurrencyInfo = supportedCurrencyMap[selectedCurrencyCode],
        systemCurrencyInfo = supportedCurrencyMap[systemCurrencyCode];
  final CurrencyInfo currencyInfo;
  final CurrencyInfo? selectedCurrencyInfo;
  final CurrencyInfo? systemCurrencyInfo;
  final ValueChanged? onCurrencySelected;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(64),
      ),
      clipBehavior: Clip.hardEdge,
      color: currencyInfo.code == selectedCurrencyInfo?.code
          ? currencyInfo.code == systemCurrencyInfo?.code
              ? context.colorScheme.tertiaryContainer
              : context.colorScheme.secondaryContainer
          : null,
      child: ListTile(
        textColor: currencyInfo.code == selectedCurrencyInfo?.code
            ? currencyInfo.code == systemCurrencyInfo?.code
                ? context.colorScheme.onTertiaryContainer
                : context.colorScheme.onSecondaryContainer
            : null,
        onTap: currencyInfo.code != selectedCurrencyInfo?.code
            ? () => onCurrencySelected?.call(currencyInfo.code)
            : null,
        title: Text(
          currencyInfo.name,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Text(
          currencyInfo.symbol,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
