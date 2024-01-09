import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../common/utils/extensions/custom_extensions.dart';

class IntroNavButtons extends StatelessWidget {
  const IntroNavButtons({
    super.key,
    this.onPressedNext,
    this.onPressedPrevious,
    this.onPressedAdd,
  });
  final VoidCallback? onPressedNext;
  final VoidCallback? onPressedPrevious;
  final VoidCallback? onPressedAdd;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          if (onPressedPrevious != null)
            IconButton.filledTonal(
              constraints: const BoxConstraints(
                minWidth: 48,
                minHeight: 48,
              ),
              onPressed: () {
                onPressedPrevious?.call();
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 24),
            ),
          if (onPressedAdd != null)
            IconButton.filledTonal(
              constraints: const BoxConstraints(
                minWidth: 48,
                minHeight: 48,
              ),
              onPressed: () {
                context.go('/setup/add');
              },
              icon: const Icon(Icons.add_rounded, size: 24),
            ),
          if (onPressedNext != null)
            IconButton.filledTonal(
              constraints: const BoxConstraints(
                minWidth: 48,
                minHeight: 48,
              ),
              onPressed: onPressedNext,
              icon: const Icon(Icons.arrow_forward_ios_rounded, size: 24),
            ),
        ].insertInBetween(const Gap(32)),
      ),
    );
  }
}
