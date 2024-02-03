import 'package:flutter/material.dart';

import '../../../../common/utils/extensions/custom_extensions.dart';
import '../../../widgets/xp_circular_avatar.dart';
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
    return TextFormField(
      initialValue: name,
      decoration: InputDecoration(
        constraints: BoxConstraints(maxWidth: context.widthScale(.6)),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        isDense: true,
        labelText: context.l10n.accountName,
        icon: XpCircularAvatar(
          value: icon,
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
          primaryColor: primaryColor,
          secondaryColor: secondaryColor,
          child: Icon(icon, color: secondaryColor, size: 24),
        ),
      ),
      onChanged: onNameChanged,
    );
  }
}
