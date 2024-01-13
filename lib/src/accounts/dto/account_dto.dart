import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/constants/contrast_color_pairs.dart';
import '../../common/constants/currency_symbols.dart';
import '../../common/dto/currency_info/currency_info_dto.dart';
import '../../common/utils/misc/app_utils.dart';
import '../domain/account.dart';
import '../enums/account_type.dart';
import 'credit_details_dto.dart';
import 'split_details_dto.dart';

part 'account_dto.freezed.dart';
part 'account_dto.g.dart';

@freezed
class AccountDto with _$AccountDto {
  AccountDto._();
  factory AccountDto({
    required String name,
    required int icon,
    required int color,
    required String currencyCode,
    required int orderNumber,
    required bool includeInBalance,
    required AccountType accountType,
    CreditDetailsDto? creditDetails,
    SplitDetailsDto? splitDetails,
  }) = _AccountDto;

  factory AccountDto.empty(
    String currencyCode,
  ) =>
      AccountDto(
        name: '',
        icon: Icons.account_balance_wallet_rounded.codePoint,
        color: 0xFF99F443,
        currencyCode: currencyCode,
        orderNumber: 0,
        includeInBalance: true,
        accountType: AccountType.debit,
        creditDetails: null,
        splitDetails: null,
      );

  factory AccountDto.fromJson(Map<String, dynamic> json) =>
      _$AccountDtoFromJson(json);

  factory AccountDto.fromDomain(Account account) => AccountDto(
        name: account.name,
        icon: account.icon,
        color: account.color,
        currencyCode: account.currencyCode,
        orderNumber: account.orderNumber,
        includeInBalance: account.includeInBalance,
        accountType: account.accountType,
        creditDetails: AppUtils.wrapIfNotNull(
          account.creditDetails,
          CreditDetailsDto.fromDomain,
        ),
        splitDetails: AppUtils.wrapIfNotNull(
          account.splitDetails,
          SplitDetailsDto.fromDomain,
        ),
      );

  Color get primaryColor => Color(color);

  Color get secondaryColor => getSecondaryColor(color);

  Color get onPrimaryColor =>
      primaryColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;

  IconData get iconValue => IconData(icon, fontFamily: 'MaterialIcons');

  CurrencyInfoDto get currencyInfo => supportedCurrencyMap[currencyCode]!;
}
