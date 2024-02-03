import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/misc/app_utils.dart';

class WrapWithLabel extends StatelessWidget {
  const WrapWithLabel({
    super.key,
    required this.child,
    required this.label,
    this.suffix,
    this.labelStyle,
  });
  final Widget child;
  final String label;
  final TextStyle? labelStyle;
  final Widget? suffix;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppUtils.wrapWidgetIf(
          condition: suffix != null,
          wrap: (child) => Row(
            children: [
              Expanded(child: child),
              suffix ?? const SizedBox(),
            ],
          ),
          child: Text(
            label,
            style: labelStyle ??
                const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
          ),
        ),
        const Gap(4),
        child,
      ],
    );
  }
}
