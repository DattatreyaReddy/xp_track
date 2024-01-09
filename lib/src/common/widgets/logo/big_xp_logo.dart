import 'package:flutter/material.dart';

import '../../../common/constants/app_enums.dart';
import '../../../common/utils/extensions/custom_extensions.dart';
import '../../../common/utils/misc/app_utils.dart';
import '../../../common/widgets/stroke_text.dart';

class BigXpLogo extends StatelessWidget {
  const BigXpLogo({
    super.key,
    this.isStartAligned = false,
    this.shouldWrapHero = true,
  });
  final bool isStartAligned;
  final bool shouldWrapHero;
  @override
  Widget build(context) {
    return AppUtils.wrapIf(
      condition: shouldWrapHero,
      wrap: (child) => Hero(
        tag: AppHero.logo,
        child: child,
      ),
      child: Material(
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
                color: context.theme.colorScheme.background,
              ),
              strokeWidth: 6,
              strokeColor: context.theme.colorScheme.onBackground,
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
      ),
    );
  }
}
