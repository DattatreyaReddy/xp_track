import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../utils/extensions/custom_extensions.dart';

class IconSelectionDialog extends HookWidget {
  const IconSelectionDialog({
    super.key,
    required this.iconColor,
    required this.backgroundColor,
    required this.icon,
  });
  final Color iconColor;
  final Color backgroundColor;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    final selectedIcon = useState(icon);
    return Scaffold(
      appBar: AppBar(
        leading: CloseButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Select an icon'),
      ),
      floatingActionButtonLocation:
          context.isLargeTablet ? FloatingActionButtonLocation.endTop : null,
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.save_rounded),
        onPressed: () => context.pop(selectedIcon.value),
        label: Text(context.l10n.save),
      ),
      body: GridView.extent(
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        maxCrossAxisExtent: 36,
        children: [
          for (IconData i in [Icons.home, Icons.work, Icons.school, Icons.star])
            InkWell(
              borderRadius: BorderRadius.circular(36),
              onTap: () => selectedIcon.value = i,
              child: CircleAvatar(
                backgroundColor: i == selectedIcon.value
                    ? backgroundColor
                    : context.theme.cardColor,
                child: Icon(
                  i,
                  size: 24,
                  color: i == selectedIcon.value ? iconColor : null,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
