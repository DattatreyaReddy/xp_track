import 'package:flutter/material.dart';

import '../../common/constants/app_constants.dart';
import '../../common/constants/currency_symbols.dart';
import '../../common/dto/currency_info/currency_info_dto.dart';
import '../../common/utils/extensions/custom_extensions.dart';
import '../../common/utils/misc/app_utils.dart';

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
  final CurrencyInfoDto currencyInfo;
  final CurrencyInfoDto? selectedCurrencyInfo;
  final CurrencyInfoDto? systemCurrencyInfo;
  final ValueChanged? onCurrencySelected;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: AppDimensions.rb16,
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
        onTap: AppUtils.returnIf(
          currencyInfo.code != selectedCurrencyInfo?.code,
          () => onCurrencySelected?.call(currencyInfo.code),
        ),
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
