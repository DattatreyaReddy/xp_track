import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/abstracts/generic_entity.dart';
import '../../common/constants/currency_symbols.dart';
import '../../common/constants/db_keys.dart';
import '../../common/dto/currency_info/currency_info_dto.dart';
import '../../common/utils/misc/epoch_date_time_converter.dart';
import '../dto/icon_and_color_converters.dart';
import '../enums/account_type.dart';

part 'account.freezed.dart';
part 'account.g.dart';

enum AccountField {
  name,
  icon,
  color,
  currencyCode,
  orderNumber,
  includeInBalance,
  accountType,
  creditDetails,
  splitDetails,
}

@freezed
class Account with _$Account, IconAndColorConverters implements GenericEntity {
  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
  Account._();
  @Assert("accountType != AccountType.credit || creditDetails != null")
  @Assert("accountType != AccountType.split || splitDetails != null")
  factory Account({
    @Default(kDbKeyHolder) String id,
    @EpochDateTimeConverter() required DateTime dateCreated,
    @EpochDateTimeConverter() required DateTime lastModified,
    required String name,
    required int icon,
    required int color,
    required String currencyCode,
    required int orderNumber,
    required bool includeInBalance,
    required AccountType accountType,
    CreditDetails? creditDetails,
    SplitDetails? splitDetails,
  }) = _Account;

  CurrencyInfoDto get currencyInfo => supportedCurrencyMap[currencyCode]!;

  factory Account.empty(
    String currencyCode,
  ) =>
      Account(
        id: kDbKeyHolder,
        dateCreated: kDbTimeHolder,
        lastModified: kDbTimeHolder,
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
}

@freezed
class CreditDetails with _$CreditDetails {
  factory CreditDetails({
    required double limit,
    required int billingDate,
    required int gracePeriodInDays,
  }) = _CreditDetails;

  factory CreditDetails.fromJson(Map<String, dynamic> json) =>
      _$CreditDetailsFromJson(json);

  factory CreditDetails.empty() => CreditDetails(
        limit: 1000,
        billingDate: 15,
        gracePeriodInDays: 21,
      );
}

@freezed
class SplitDetails with _$SplitDetails {
  @Assert("splitInto != null && splitInto > 0")
  factory SplitDetails({
    required int splitInto,
  }) = _SplitDetails;

  factory SplitDetails.empty() => SplitDetails(splitInto: 2);
  factory SplitDetails.fromJson(Map<String, dynamic> json) =>
      _$SplitDetailsFromJson(json);
}
