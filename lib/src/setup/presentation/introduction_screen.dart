import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../accounts/controllers/account_controllers.dart';
import '../../common/utils/extensions/custom_extensions.dart';
import '../../common/widgets/label_text.dart';
import '../../core/controllers/settings_controller.dart';
import '../controller/setup_controller.dart';
import '../routes/routes.dart';
import '../widgets/intro_nav_buttons.dart';
import '../widgets/responsive_intro_widget.dart';

class IntroductionScreen extends ConsumerWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(context, ref) {
    final isSetupStarted = ref.watch(hasSetupStartedProvider).ifNull();
    return ResponsiveIntroWidget(
      isMobileScrollable: !isSetupStarted,
      showMiniLogoForMobile: isSetupStarted,
      child: isSetupStarted ? const SetupProgress() : const StartScreenInfo(),
    );
  }
}

// class SetupProgress extends C
class SetupProgress extends ConsumerWidget {
  const SetupProgress({super.key});

  @override
  Widget build(context, ref) {
    final userNameEntered =
        ref.watch(userNameProvider.select((name) => name.isNotBlank));
    final currencySelected =
        ref.watch(defaultCurrencyProvider.select((name) => name.isNotBlank));
    final accountsSelected = ref.watch(accountSelectedProvider);
    final categoriesSelected = ref.watch(categorySelectedProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelText(label: context.l10n.startSetup),
        Spacer(),
        Card(
          child: ListTile(
            title: Text(context.l10n.userName),
            selected: userNameEntered,
            onTap: () => const SetupUserNameRoute().go(context),
            trailing: userNameEntered
                ? Icon(Icons.check_circle_rounded)
                : Icon(Icons.arrow_forward_ios_rounded),
          ),
        ),
        Gap(8),
        Card(
          child: ListTile(
            title: Text(context.l10n.currency),
            selected: currencySelected,
            onTap: () => const SetupCurrencyRoute().go(context),
            trailing: currencySelected
                ? Icon(Icons.check_circle_rounded)
                : Icon(Icons.arrow_forward_ios_rounded),
          ),
        ),
        Gap(8),
        Card(
          child: ListTile(
            title: Text(context.l10n.accounts),
            selected: accountsSelected,
            onTap: () => const SetupAccountRoute().go(context),
            trailing: accountsSelected
                ? Icon(Icons.check_circle_rounded)
                : Icon(Icons.arrow_forward_ios_rounded),
          ),
        ),
        Gap(8),
        Card(
          child: ListTile(
            title: Text(context.l10n.category),
            selected: categoriesSelected,
            onTap: () => const SetupCategoryRoute().go(context),
            trailing: categoriesSelected
                ? Icon(Icons.check_circle_rounded)
                : Icon(Icons.arrow_forward_ios_rounded),
          ),
        ),
        Spacer()
      ],
    );
  }
}

class StartScreenInfo extends ConsumerWidget {
  const StartScreenInfo({
    super.key,
  });

  @override
  Widget build(context, ref) {
    return Column(
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
          onPressedNext: () {
            ref.watch(hasSetupStartedProvider.notifier).update(true);
            const SetupUserNameRoute().go(context);
          },
        ),
      ],
    );
  }
}
