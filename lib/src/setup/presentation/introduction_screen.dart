import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../common/utils/extensions/custom_extensions.dart';
import '../../common/widgets/label_text.dart';
import '../routes/routes.dart';
import '../widgets/intro_nav_buttons.dart';
import '../widgets/responsive_intro_widget.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveIntroWidget(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelText(label: context.l10n.startSetup),
          const Gap(4),
          Text(
            context.l10n.offlineAccountInfo,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              letterSpacing: 0,
              color: Colors.grey,
            ),
          ),
          const Gap(48),
          IntroNavButtons(
            onPressedNext: () => const SetupUserNameRoute().push(context),
          ),
        ],
      ),
    );
  }
}
