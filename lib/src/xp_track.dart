import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'common/utils/extensions/custom_extensions.dart';
import 'core/controllers/router_controller.dart';
import 'core/controllers/settings_controller.dart';

class XpTrack extends ConsumerWidget {
  const XpTrack({super.key});

  @override
  Widget build(context, ref) {
    final routerConfig = ref.watch(routerConfigProvider);
    final selectedLocale = ref.watch(selectedLocaleProvider);
    return MaterialApp.router(
      title: 'XpTrack',
      builder: FToastBuilder(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      themeMode: ThemeMode.dark,
      locale: selectedLocale.toLocale,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      routerConfig: routerConfig,
    );
  }
}
