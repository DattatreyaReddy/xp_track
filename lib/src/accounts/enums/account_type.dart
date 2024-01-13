import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../common/abstracts/locale_enum.dart';
import '../../common/utils/extensions/custom_extensions.dart';

@JsonEnum(valueField: "value")
enum AccountType implements LocaleEnum {
  credit("CREDIT", Icons.credit_card_rounded),
  debit("DEBIT", Icons.savings_rounded),
  split("SPLIT", Icons.payments_rounded),
  ;

  const AccountType(this.value, this.iconData);
  @override
  final String value;

  final IconData iconData;

  @override
  String toLocale(BuildContext context) => switch (this) {
        credit => context.l10n.credit,
        debit => context.l10n.debit,
        split => context.l10n.split,
      };
}
