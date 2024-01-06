import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/controllers/router_controller.dart';

class XpTrack extends ConsumerWidget {
  const XpTrack({super.key});

  @override
  Widget build(context, ref) {
    final routerConfig = ref.watch(routerConfigProvider);
    return MaterialApp.router(
      title: 'XpTrack',
      builder: FToastBuilder(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('en'),
      routerConfig: routerConfig,
    );
  }
}
