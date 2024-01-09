import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../extensions/custom_extensions.dart';
import 'toast.dart';

Future<void> launchUrlInWeb(BuildContext context, String url,
    [Toast? toast]) async {
  if (!await launchUrl(
    Uri.parse(url),
    mode: LaunchMode.externalApplication,
    webOnlyWindowName: "_blank",
  )) {
    await Clipboard.setData(ClipboardData(text: url));
    if (context.mounted) toast?.showError(context.l10n.errorLaunchUrl(url));
  }
}
