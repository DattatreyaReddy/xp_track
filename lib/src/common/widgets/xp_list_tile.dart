import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constants/app_constants.dart';
import '../utils/misc/app_utils.dart';

class XpListTile extends StatelessWidget {
  const XpListTile({
    super.key,
    this.trailing,
    this.leading,
    this.title,
    this.subtitle,
    this.tileColor,
    this.swapKey,
    this.onTap,
    this.onNext,
    this.onPrev,
    this.onDelete,
    this.hideIconOnNull = true,
    this.isReadOnly = false,
  });
  final Widget? trailing;
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Color? tileColor;
  final dynamic swapKey;
  final VoidCallback? onTap;
  final VoidCallback? onNext;
  final VoidCallback? onPrev;
  final VoidCallback? onDelete;
  final bool hideIconOnNull;
  final bool isReadOnly;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: AppDimensions.rb16,
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) => SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, -1),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            ),
            child: Material(
              key: ValueKey(swapKey),
              elevation: 2,
              shape: AppDimensions.rb16,
              child: ListTile(
                onTap: AppUtils.returnIf(!isReadOnly, onTap),
                visualDensity: VisualDensity.comfortable,
                shape: AppDimensions.rb16,
                tileColor: tileColor,
                leading: leading,
                title: title,
                subtitle: subtitle,
                trailing: trailing,
              ),
            ),
          ),
          if (!isReadOnly &&
              (onNext != null || onPrev != null || onDelete != null))
            Row(
              children: [
                if (!hideIconOnNull || onPrev != null)
                  IconButton(
                    visualDensity: VisualDensity.compact,
                    onPressed: onPrev,
                    icon: const Icon(Icons.arrow_drop_up_rounded),
                  ),
                if (!hideIconOnNull || onNext != null)
                  IconButton(
                    visualDensity: VisualDensity.compact,
                    onPressed: onNext,
                    icon: const Icon(Icons.arrow_drop_down_rounded),
                  ),
                const Spacer(),
                if (!hideIconOnNull || onDelete != null)
                  IconButton(
                    visualDensity: VisualDensity.compact,
                    onPressed: onDelete,
                    icon: const Icon(Icons.delete_rounded, size: 18),
                  ),
                const Gap(8),
              ],
            ),
        ],
      ),
    );
  }
}
