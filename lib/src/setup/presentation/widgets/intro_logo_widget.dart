import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../common/constants/app_enums.dart';
import '../../../common/utils/extensions/custom_extensions.dart';
import '../../../common/utils/misc/app_utils.dart';
import '../../../common/widgets/logo/big_xp_logo.dart';

class IntroLogoWidget extends StatelessWidget {
  const IntroLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: AppHero.logo,
      child: Material(
        child: AppUtils.wrapIf(
          condition: context.isDesktopOrWider,
          wrap: (child) => Transform.scale(
            scale: 1.5,
            child: child,
          ),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 300,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BigXpLogo(
                    isStartAligned: true,
                    shouldWrapHero: false,
                  ),
                  const Gap(16),
                  RichText(
                    text: TextSpan(
                      text: "${context.l10n.trackYour} ",
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 0,
                        height: 1.5,
                        fontWeight: FontWeight.w700,
                        color: context.theme.colorScheme.onBackground,
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
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      backgroundColor: context.theme.colorScheme.secondary,
                      labelStyle: TextStyle(
                        color: context.theme.colorScheme.onSecondary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    child: Wrap(
                      spacing: 8,
                      children: [
                        Chip(label: Text("#${context.l10n.openSource}")),
                        Chip(label: Text("#${context.l10n.offline}")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
