import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/utils/extensions/custom_extensions.dart';
import '../../core/controllers/settings_controller.dart';
import '../routes/routes.dart';
import 'widgets/intro_nav_buttons.dart';
import 'widgets/responsive_intro_widget.dart';

class SetupUserNameScreen extends HookConsumerWidget {
  const SetupUserNameScreen({super.key});

  @override
  Widget build(context, ref) {
    final userNameController = useTextEditingController();
    final stepUserName = ref.watch(userNameProvider);
    useEffect(() {
      userNameController.text = stepUserName.ifBlank();
      return null;
    }, [stepUserName]);
    return ResponsiveIntroWidget(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${context.l10n.userName}:",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0,
              color: Colors.grey,
            ),
          ),
          const Gap(8),
          TextField(
            controller: userNameController,
            onSubmitted: (value) {
              ref.read(userNameProvider.notifier).update(value.trim());
              const SetupCurrencyRoute().go(context);
            },
            decoration: InputDecoration(
              isDense: true,
              hintText: context.l10n.userName,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
            ),
          ),
          const Gap(48),
          IntroNavButtons(
            onPressedPrevious: () => context.pop(),
            onPressedNext: () {
              final value = userNameController.text.trim();
              ref.read(userNameProvider.notifier).update(value);
              const SetupCurrencyRoute().push(context);
            },
          ),
        ],
      ),
    );
  }
}
