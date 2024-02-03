import 'package:flutter/material.dart';

import '../../common/utils/misc/app_utils.dart';

class XpCircularAvatar<T> extends StatelessWidget {
  const XpCircularAvatar({
    super.key,
    this.child,
    this.onTap,
    required this.value,
    this.isSelected = false,
    required this.primaryColor,
    required this.secondaryColor,
    this.tapOnFocus = false,
  });
  final VoidCallback? onTap;
  final T value;
  final bool isSelected;
  final Color primaryColor;
  final Color? secondaryColor;
  final Widget? child;
  final bool tapOnFocus;
  @override
  Widget build(BuildContext context) {
    return AppUtils.wrapWidgetIf(
      condition: onTap != null,
      wrap: (child) => InkWell(
        customBorder: const CircleBorder(),
        onTap: () => onTap?.call(),
        onFocusChange: AppUtils.returnIf(
          tapOnFocus && onTap != null,
          (focusValue) => focusValue ? onTap?.call() : null,
        ),
        child: child,
      ),
      child: Container(
        height: 46,
        width: 46,
        decoration: BoxDecoration(
          color: primaryColor,
          shape: BoxShape.circle,
          border: AppUtils.returnIf(
            secondaryColor != null,
            Border.all(color: secondaryColor!, width: isSelected ? 4 : 2),
          ),
        ),
        child: child,
      ),
    );
  }
}
