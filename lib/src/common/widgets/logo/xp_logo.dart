import 'package:flutter/material.dart';

import '../../../common/utils/extensions/custom_extensions.dart';
import '../../../common/widgets/stroke_text.dart';

class XpLogo extends StatelessWidget {
  const XpLogo({
    super.key,
    this.fontSize = 24,
  });
  final double fontSize;
  @override
  Widget build(context) {
    return Material(
      color: Colors.transparent,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StrokeText(
            context.l10n.xp,
            style: TextStyle(
              fontSize: fontSize - 5,
              letterSpacing: 4,
              height: 1.3,
              color: context.theme.colorScheme.surface,
            ),
            strokeWidth: 4,
            strokeColor: context.theme.colorScheme.onSurface,
          ),
          Text(
            context.l10n.track,
            style: TextStyle(
              fontSize: fontSize,
              letterSpacing: -2,
              height: 1,
              fontWeight: FontWeight.w600,
              color: context.theme.colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
