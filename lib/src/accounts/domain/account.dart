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
@JsonSerializable(createToJson: true)
class Account with _$Account, IconAndColorConverters implements GenericEntity {
  @override
  Account({
    this.id = kDbKeyHolder,
    required this.dateCreated,
    required this.lastModified,
    required this.name,
    required this.icon,
    required this.color,
    required this.currencyCode,
    required this.orderNumber,
    required this.includeInBalance,
    required this.accountType,
    required this.creditDetails,
    required this.splitDetails,
  })  : assert(accountType != AccountType.credit || creditDetails != null),
        assert(accountType != AccountType.split || splitDetails != null);

  @override
  final String id;
  @override
  @EpochDateTimeConverter()
  final DateTime dateCreated;
  @override
  @EpochDateTimeConverter()
  final DateTime lastModified;
  @override
  final String name;
  @override
  final int icon;
  @override
  final int color;
  @override
  final String currencyCode;
  @override
  final int orderNumber;
  @override
  final bool includeInBalance;
  @override
  final AccountType accountType;
  @override
  final CreditDetails? creditDetails;
  @override
  final SplitDetails? splitDetails;

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
        color: Colors.blueAccent.toARGB32(),
        currencyCode: currencyCode,
        orderNumber: 0,
        includeInBalance: true,
        accountType: AccountType.debit,
        creditDetails: null,
        splitDetails: null,
      );
  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}

@freezed
@JsonSerializable(createToJson: true)
class CreditDetails with _$CreditDetails {
  CreditDetails({required this.limit});
  @override
  final double limit;

  factory CreditDetails.fromJson(Map<String, dynamic> json) =>
      _$CreditDetailsFromJson(json);

  factory CreditDetails.empty() => CreditDetails(limit: 1000);

  Map<String, Object?> toJson() => _$CreditDetailsToJson(this);
}

@freezed
@JsonSerializable()
class SplitDetails with _$SplitDetails {
  SplitDetails({required this.splitInto}) : assert(splitInto > 0);
  @override
  final int splitInto;

  factory SplitDetails.empty() => SplitDetails(splitInto: 2);
  factory SplitDetails.fromJson(Map<String, dynamic> json) =>
      _$SplitDetailsFromJson(json);

  Map<String, Object?> toJson() => _$SplitDetailsToJson(this);
}
