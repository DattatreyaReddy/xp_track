import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/constants/currency_symbols.dart';
import '../../common/dto/currency_info/currency_info_dto.dart';
import '../../common/utils/misc/app_utils.dart';
import '../domain/account.dart';
import '../enums/account_type.dart';
import 'credit_details_dto.dart';
import 'icon_and_color_converters.dart';
import 'split_details_dto.dart';

part 'account_dto.freezed.dart';
part 'account_dto.g.dart';

@freezed
class AccountDto with _$AccountDto, IconAndColorConverters {
  AccountDto._();
  factory AccountDto({
    int? accountId,
    bool? isDeleted,
    DateTime? dateCreated,
    DateTime? lastModified,
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

  factory AccountDto.fromJson(Map<String, dynamic> json) =>
      _$AccountDtoFromJson(json);

  factory AccountDto.empty(
    String currencyCode,
  ) =>
      AccountDto(
        name: '',
        icon: Icons.account_balance_wallet_rounded.codePoint,
        color: Colors.blueAccent.value,
        currencyCode: currencyCode,
        orderNumber: 0,
        includeInBalance: true,
        accountType: AccountType.debit,
        creditDetails: null,
        splitDetails: null,
      );

  factory AccountDto.fromDomain(Account account) => AccountDto(
        accountId: account.id,
        isDeleted: account.isDeleted,
        dateCreated: account.dateCreated,
        lastModified: account.lastModified,
        name: account.name,
        icon: account.icon,
        color: account.color,
        currencyCode: account.currencyCode,
        orderNumber: account.orderNumber,
        includeInBalance: account.includeInBalance,
        accountType: account.accountType,
        creditDetails: AppUtils.onNotNull(
          account.creditDetails,
          CreditDetailsDto.fromDomain,
        ),
        splitDetails: AppUtils.onNotNull(
          account.splitDetails,
          SplitDetailsDto.fromDomain,
        ),
      );

  Account get toDomain => Account.fromDto(
        id: accountId,
        isDeleted: isDeleted,
        dateCreated: dateCreated,
        lastModified: lastModified,
        name: name,
        icon: icon,
        color: color,
        currencyCode: currencyCode,
        orderNumber: orderNumber,
        includeInBalance: includeInBalance,
        accountType: accountType,
        creditDetails: creditDetails,
        splitDetails: splitDetails,
      );

  CurrencyInfoDto get currencyInfo => supportedCurrencyMap[currencyCode]!;
}
