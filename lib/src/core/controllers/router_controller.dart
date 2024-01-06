import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../routes/router_notifier/router_notifier.dart';
import '../routes/routes.dart' as core;

part 'router_controller.g.dart';

final navigatorKey = GlobalKey<NavigatorState>();
final _shellRouteNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter routerConfig(RouterConfigRef ref) {
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
      ShellRoute(
        navigatorKey: _shellRouteNavigatorKey,
        builder: (context, state, child) {
          return child;
        },
        routes: [
          ...core.$appRoutes,
        ],
      ),
    ],
    redirect: notifier.redirect,
  );
}
