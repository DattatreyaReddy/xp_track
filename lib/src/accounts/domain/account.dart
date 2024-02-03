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

  @Index()
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
        assert(accountType != AccountType.split || splitDetails != null),
        super();

  factory Account.fromDto({
    int? id,
    bool? isDeleted = false,
    DateTime? dateCreated,
    DateTime? lastModified,
    required String name,
    required int icon,
    required int color,
    required String currencyCode,
    required int orderNumber,
    required bool includeInBalance,
    required AccountType accountType,
    CreditDetails? creditDetails,
    SplitDetails? splitDetails,
  }) {
    final Account account = Account(
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
    account.id = id ?? Isar.autoIncrement;
    account.isDeleted = isDeleted ?? false;
    account.dateCreated = dateCreated;
    account.lastModified = lastModified;
    return account;
  }
}

@embedded
class CreditDetails {
  double? limit;

  int? billingDate;

  int? gracePeriodInDays;

  CreditDetails({
    this.limit,
    this.billingDate,
    this.gracePeriodInDays,
  })  : assert(limit != null && limit > 0),
        assert(billingDate != null && billingDate > 0 && billingDate < 32),
        assert(gracePeriodInDays != null && gracePeriodInDays > 0);
}

@embedded
class SplitDetails {
  int? splitInto;

  SplitDetails({
    this.splitInto,
  }) : assert(splitInto != null && splitInto > 0);
}
