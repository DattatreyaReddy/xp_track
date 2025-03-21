import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/utils/extensions/custom_extensions.dart';
import '../../home/routes/routes.dart' as home;
import '../../setup/controller/setup_controller.dart';
import '../../setup/routes/routes.dart' as setup;
import '../dto/app_config.dart';
import '../routes/router_notifier/router_notifier.dart';
import '../routes/routes.dart' as core;

part 'router_controller.g.dart';

final navigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter routerConfig(Ref ref) {
  // This instruction keeps this notifier alive
  // We don't really care of its value, and neither we want to rebuild on its changes.
  final sub = ref.listen(routerNotifierProvider, (_, __) {});
  ref.onDispose(() => sub.close());

  final notifier = ref.read(routerNotifierProvider.notifier);

  return GoRouter(
    navigatorKey: navigatorKey,
    refreshListenable: notifier,
    debugLogDiagnostics: true,
    initialLocation: const core.SplashRoute().location,
    routes: [
      ...core.$appRoutes,
      ...setup.$appRoutes,
      ...home.$appRoutes,
    ],
    redirect: notifier.redirect,
  );
}

@riverpod
class AppConfigState extends _$AppConfigState {
  @override
  AppConfig build() {
    ref.watch(hasSetupCompletedProvider);
    Future.delayed(const Duration(seconds: 1), () {
      final isSetupCompleted = ref.read(hasSetupCompletedProvider);
      if (isSetupCompleted.ifNull()) {
        state = AppConfig.home();
      } else {
        state = AppConfig.setup();
      }
    });
    return AppConfig.splash();
  }
}
