import 'package:flutter/material.dart';

import '../../../../common/utils/extensions/custom_extensions.dart';
import 'icon_selection_dialog.dart';

class AccountNameIconSelection extends StatelessWidget {
  const AccountNameIconSelection({
    super.key,
    required this.icon,
    required this.name,
    required this.primaryColor,
    required this.secondaryColor,
    required this.onIconChanged,
    required this.onNameChanged,
  });

  final IconData icon;
  final String name;
  final Color primaryColor;
  final Color secondaryColor;
  final ValueChanged<IconData> onIconChanged;
  final ValueChanged<String> onNameChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        initialValue: name,
        decoration: InputDecoration(
          constraints: BoxConstraints(maxWidth: context.widthScale(.6)),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          isDense: true,
          labelText: context.l10n.accountName,
          icon: InkWell(
            borderRadius: BorderRadius.circular(36),
            onTap: () async {
              final newIcon = await showDialog<IconData>(
                context: context,
                builder: (context) => Dialog.fullscreen(
                  child: IconSelectionDialog(
                    iconColor: secondaryColor,
                    backgroundColor: primaryColor,
                    icon: icon,
                  ),
                ),
              );
              if (newIcon != null) {
                onIconChanged(newIcon);
              }
            },
            child: CircleAvatar(
              child: Icon(
                icon,
                color: secondaryColor,
              ),
            ),
          ),
        ),
        onChanged: onNameChanged,
      ),
    );
  }
}
