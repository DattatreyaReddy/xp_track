import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../common/utils/extensions/custom_extensions.dart';
import '../../../common/utils/misc/app_utils.dart';
import '../../../common/widgets/logo/xp_logo.dart';
import 'intro_logo_widget.dart';

class ResponsiveIntroWidget extends StatelessWidget {
  const ResponsiveIntroWidget({
    super.key,
    this.child,
    this.showMiniLogoForMobile = false,
    this.isMobileScrollable = true,
  });
  final Widget? child;
  final bool showMiniLogoForMobile;
  final bool isMobileScrollable;
  @override
  Widget build(BuildContext context) {
    final newChild = child != null
        ? ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: context.responsiveValue(
                desktop: 600,
                tablet: 400,
                mobile: 300,
              ),
            ),
            child: child!,
          )
        : null;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32) +
            const EdgeInsets.only(top: 64, bottom: 16),
        child: context.isSmallTablet
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 128),
                    child: IntroLogoWidget(),
                  ),
                  const Gap.expand(16),
                  if (newChild != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: newChild,
                    ),
                ],
              )
            : Center(
                child: AppUtils.wrapIf(
                  condition: isMobileScrollable,
                  wrap: (child) => SingleChildScrollView(child: child),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      showMiniLogoForMobile
                          ? const XpLogo()
                          : const IntroLogoWidget(),
                      const Gap(32),
                      if (newChild != null)
                        AppUtils.wrapIf(
                          condition: !isMobileScrollable,
                          wrap: (child) => Expanded(child: child),
                          child: newChild,
                        ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
