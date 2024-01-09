import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/routes.dart';
import 'widgets/intro_nav_buttons.dart';
import 'widgets/responsive_intro_widget.dart';

class SetupBankAccountScreen extends StatelessWidget {
  const SetupBankAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveIntroWidget(
      child: IntroNavButtons(
        onPressedPrevious: () => context.pop(),
        onPressedAdd: () {},
        onPressedNext: () {
          const SetupCategoryRoute().push(context);
        },
      ),
    );
  }
}
