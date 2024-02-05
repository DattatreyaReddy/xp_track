import 'package:flutter/material.dart';

import '../../../enums/account_type.dart';

class AccountTypeSelection extends StatelessWidget {
  const AccountTypeSelection({
    super.key,
    required this.accountType,
    required this.onChanged,
  });
  final AccountType accountType;
  final ValueChanged<AccountType> onChanged;
  @override
  Widget build(BuildContext context) {
    return SegmentedButton<AccountType>(
      style: const ButtonStyle(visualDensity: VisualDensity.comfortable),
      selected: {accountType},
      onSelectionChanged: (values) => onChanged(values.first),
      segments: AccountType.values
          .map((e) => ButtonSegment(
                value: e,
                icon: Icon(e.iconData),
                label: Text(
                  e.toLocale(context),
                  overflow: TextOverflow.ellipsis,
                ),
                tooltip: e.toLocale(context),
              ))
          .toList(),
    );
  }
}
