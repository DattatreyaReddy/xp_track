import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../common/constants/app_constants.dart';
import '../../common/utils/extensions/custom_extensions.dart';

class IntroNavButtons extends StatelessWidget {
  const IntroNavButtons({
    super.key,
    this.persistNext = false,
    this.onPressedNext,
    this.persistPrevious = false,
    this.onPressedPrevious,
    this.persistAdd = false,
    this.onPressedAdd,
  });
  final bool persistNext;
  final bool persistPrevious;
  final bool persistAdd;
  final VoidCallback? onPressedNext;
  final VoidCallback? onPressedPrevious;
  final VoidCallback? onPressedAdd;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: IconButtonTheme(
        data: IconButtonThemeData(
          style: IconButton.styleFrom(shape: AppDimensions.rb16),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (persistPrevious || onPressedPrevious != null)
              IconButton.filledTonal(
                constraints: const BoxConstraints(
                  minWidth: 48,
                  minHeight: 48,
                ),
                onPressed: onPressedPrevious,
                icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 24),
              ),
            if (persistAdd || onPressedAdd != null)
              IconButton.filledTonal(
                constraints: const BoxConstraints(
                  minWidth: 48,
                  minHeight: 48,
                ),
                onPressed: onPressedAdd,
                icon: const Icon(Icons.add_rounded, size: 24),
              ),
            if (persistNext || onPressedNext != null)
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
      ),
    );
  }
}
