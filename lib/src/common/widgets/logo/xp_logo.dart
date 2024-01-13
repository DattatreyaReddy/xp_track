import 'package:flutter/material.dart';

import '../../../common/constants/app_enums.dart';
import '../../../common/utils/extensions/custom_extensions.dart';
import '../../../common/utils/misc/app_utils.dart';
import '../../../common/widgets/stroke_text.dart';

class XpLogo extends StatelessWidget {
  const XpLogo({
    super.key,
    this.shouldWrapHero = true,
    this.fontSize = 24,
  });
  final bool shouldWrapHero;
  final double fontSize;
  @override
  Widget build(context) {
    return AppUtils.wrapWidgetIf(
      condition: shouldWrapHero,
      wrap: (child) => Hero(
        tag: AppHero.logo,
        child: child,
      ),
      child: Material(
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
                color: context.theme.colorScheme.background,
              ),
              strokeWidth: 4,
              strokeColor: context.theme.colorScheme.onBackground,
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
      ),
    );
  }
}
