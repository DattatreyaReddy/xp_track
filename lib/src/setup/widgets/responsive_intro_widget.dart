import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../common/constants/app_enums.dart';
import '../../common/utils/extensions/custom_extensions.dart';
import '../../common/utils/misc/app_utils.dart';
import '../../common/widgets/logo/xp_logo.dart';
import 'intro_logo_widget.dart';

class ResponsiveIntroWidget extends StatelessWidget {
  const ResponsiveIntroWidget({
    super.key,
    this.child,
    this.showMiniLogoForMobile = false,
    this.isMobileScrollable = false,
    this.drawer,
    this.endDrawer,
  });
  final Widget? child;
  final bool showMiniLogoForMobile;
  final bool isMobileScrollable;
  final Widget? drawer;
  final Widget? endDrawer;
  @override
  Widget build(BuildContext context) {
    final newChild = AppUtils.returnIf(
        child != null,
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: context.responsiveValue(
              desktop: 600,
              tablet: 450,
              smallTablet: 320,
              mobile: 450,
            ),
          ),
          child: child!,
        ));
    return Scaffold(
      drawer: drawer,
      endDrawer: endDrawer,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16) +
            const EdgeInsets.only(top: 32, bottom: 16),
        child: context.isSmallTablet
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 128),
                    child: Hero(tag: AppHero.logo, child: IntroLogoWidget()),
                  ),
                  const Gap.expand(16),
                  if (newChild != null)
                    SizedBox(
                      height: context.heightScale(.8),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 32),
                          child: newChild,
                        ),
                      ),
                    ),
                ],
              )
            : Align(
                alignment: Alignment.bottomCenter,
                child: AppUtils.wrapWidgetIf(
                  condition: isMobileScrollable,
                  wrap: (child) => SingleChildScrollView(
                    reverse: true,
                    child: child,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (showMiniLogoForMobile)
                        Hero(tag: AppHero.logo, child: const XpLogo())
                      else
                        SizedBox(
                          height: context.heightScale(.5),
                          child: Hero(
                            tag: AppHero.logo,
                            child: const IntroLogoWidget(),
                          ),
                        ),
                      const Gap(16),
                      if (newChild != null)
                        AppUtils.wrapWidgetIf(
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
