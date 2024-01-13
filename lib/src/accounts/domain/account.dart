import 'package:isar/isar.dart';

import '../../core/storage/isar/domain/generic_id_abstract_entity.dart';
import '../enums/account_type.dart';

part 'account.g.dart';

@collection
class Account extends GenericIdAbstractEntity {
  String name;

  int icon;

  int color;

  String currencyCode;

  int orderNumber;

  bool includeInBalance;

  @Enumerated(EnumType.value, "value")
  AccountType accountType;

  CreditDetails? creditDetails;

  SplitDetails? splitDetails;

  Account({
    required this.name,
    required this.icon,
    required this.color,
    required this.currencyCode,
    required this.orderNumber,
    required this.includeInBalance,
    required this.accountType,
    this.creditDetails,
    this.splitDetails,
  })  : assert(accountType != AccountType.credit || creditDetails != null),
        assert(accountType != AccountType.split || splitDetails != null);
}

@embedded
class CreditDetails {
  double? limit;

  int? billingCycleInDays;

  DateTime? startDate;

  int? gracePeriodInDays;

  CreditDetails({
    this.limit,
    this.billingCycleInDays,
    this.startDate,
    this.gracePeriodInDays,
  })  : assert(limit != null && limit > 0),
        assert(billingCycleInDays != null && billingCycleInDays > 0),
        assert(startDate != null),
        assert(gracePeriodInDays != null && gracePeriodInDays > 0);
}

@embedded
class SplitDetails {
  int? splitInto;

  SplitDetails({
    this.splitInto,
  }) : assert(splitInto != null && splitInto > 0);
}
