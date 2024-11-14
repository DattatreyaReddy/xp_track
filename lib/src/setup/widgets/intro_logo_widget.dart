import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../common/constants/app_constants.dart';
import '../../common/utils/extensions/custom_extensions.dart';
import '../../common/utils/misc/app_utils.dart';
import '../../common/widgets/logo/big_xp_logo.dart';

class IntroLogoWidget extends StatelessWidget {
  const IntroLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: AppUtils.wrapWidgetIf(
        condition: context.isDesktopOrWider,
        wrap: (child) => Transform.scale(
          scale: 1.5,
          child: child,
        ),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BigXpLogo(isStartAligned: true),
                const Gap(16),
                RichText(
                  text: TextSpan(
                    text: "${context.l10n.trackYour} ",
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 0,
                      height: 1.5,
                      fontWeight: FontWeight.w700,
                      color: context.theme.colorScheme.onSurface,
                    ),
                    children: [
                      TextSpan(
                        text: "#${context.l10n.expenses}",
                        style: TextStyle(
                          color: context.theme.colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(16),
                ChipTheme(
                  data: ChipThemeData(
                    shape: AppDimensions.rb16,
                    backgroundColor: context.theme.colorScheme.secondary,
                    labelStyle: TextStyle(
                      color: context.theme.colorScheme.onSecondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Chip(label: Text("#${context.l10n.openSource}")),
                        Gap(8),
                        Chip(label: Text("#${context.l10n.offline}")),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
