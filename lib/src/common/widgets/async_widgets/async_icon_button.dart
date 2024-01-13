import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../custom_circular_progress_indicator.dart';

class AsyncIconButton extends HookWidget {
  const AsyncIconButton({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final AsyncCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);
    return IconButton(
      icon: isLoading.value
          ? const MiniCircularProgressIndicator()
          : const Icon(Icons.copy),
      onPressed: onPressed == null || isLoading.value
          ? null
          : () async {
              isLoading.value = (true);
              await onPressed?.call();
              isLoading.value = (false);
            },
    );
  }
}
