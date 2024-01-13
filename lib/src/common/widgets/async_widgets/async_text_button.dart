import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../custom_circular_progress_indicator.dart';

class AsyncTextButton extends HookWidget {
  const AsyncTextButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.style,
  });
  final AsyncCallback? onPressed;
  final Widget child;
  final ButtonStyle? style;
  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);
    return TextButton(
      onPressed: onPressed == null || isLoading.value
          ? null
          : () async {
              isLoading.value = (true);
              await onPressed!();
              isLoading.value = (false);
            },
      style: style,
      child: isLoading.value ? const MiniCircularProgressIndicator() : child,
    );
  }
}