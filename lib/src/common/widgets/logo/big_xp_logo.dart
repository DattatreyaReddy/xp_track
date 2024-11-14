import 'package:flutter/material.dart';

import '../../../common/utils/extensions/custom_extensions.dart';
import '../../../common/widgets/stroke_text.dart';

class BigXpLogo extends StatelessWidget {
  const BigXpLogo({
    super.key,
    this.isStartAligned = false,
  });
  final bool isStartAligned;
  @override
  Widget build(context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: isStartAligned
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          StrokeText(
            context.l10n.xp,
            style: TextStyle(
              fontSize: 48,
              letterSpacing: 4,
              height: 1.3,
              color: context.theme.colorScheme.surface,
            ),
            strokeWidth: 6,
            strokeColor: context.theme.colorScheme.onSurface,
          ),
          Text(
            context.l10n.track,
            style: TextStyle(
              fontSize: 48,
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
