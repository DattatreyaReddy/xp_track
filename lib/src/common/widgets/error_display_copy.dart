import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../utils/extensions/custom_extensions.dart';
import '../utils/misc/toast.dart';

class ErrorDisplayCopy extends ConsumerWidget {
  const ErrorDisplayCopy({super.key, this.error});
  final Object? error;
  @override
  Widget build(context, ref) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(error.toString(), textAlign: TextAlign.center),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              icon: const Icon(Icons.copy),
              onPressed: () async {
                await Clipboard.setData(ClipboardData(text: error.toString()));
                if (context.mounted) {
                  final toast = ref.read(toastProvider(context));
                  toast.instantShow(context.l10n.copiedToClipboard);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
