import 'package:flutter/material.dart';

import '../../common/utils/extensions/custom_extensions.dart';
import '../../common/widgets/icon_selection_dialog.dart';
import '../../setup/widgets/xp_circular_avatar.dart';

class IconAndNameSelection extends StatelessWidget {
  const IconAndNameSelection({
    super.key,
    required this.labelText,
    required this.icon,
    required this.name,
    required this.primaryColor,
    required this.secondaryColor,
    required this.onIconChanged,
    required this.onNameChanged,
  });

  final IconData icon;
  final String name;
  final String labelText;
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
        labelText: labelText,
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
