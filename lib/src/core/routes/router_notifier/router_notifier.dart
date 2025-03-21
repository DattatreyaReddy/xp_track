import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../home/routes/routes.dart';
import '../../../setup/routes/routes.dart';
import '../../controllers/router_controller.dart';
import '../../dto/app_config.dart';
import '../routes.dart';

part 'router_notifier.g.dart';

@riverpod
class RouterNotifier extends _$RouterNotifier implements Listenable {
  VoidCallback? routerListener;

  @override
  void build() {
    // this watch will rebuild the notifier when the auth state changes
    ref.watch(appConfigStateProvider);
    listenSelf((_, next) {
      routerListener?.call();
    });
    return;
  }

  /// Redirects the user when our authentication changes
  String? redirect(BuildContext context, GoRouterState routerState) {
    final appConfigState = ref.read(appConfigStateProvider);
    final location = routerState.uri.toString();

    final isSplash = location.contains(const SplashRoute().location);
    final isSetup = location.contains(const IntroductionRoute().location);
    final isHome = location.contains(const HomeRoute().location);

    return switch (appConfigState) {
      SplashState() => isSplash ? null : const SplashRoute().location,
      HomeState() => isHome ? null : const HomeRoute().location,
      SetupState() => isSetup ? null : const IntroductionRoute().location,
    };
  }

  /// Adds [GoRouter]'s listener as specified by its [Listenable].
  /// [GoRouteInformationProvider] uses this method on creation to handle its
  /// internal [ChangeNotifier].
  /// Check out the internal implementation of [GoRouter] and
  /// [GoRouteInformationProvider] to see this in action.
  @override
  void addListener(VoidCallback listener) {
    routerListener = listener;
  }

  /// Removes [GoRouter]'s listener as specified by its [Listenable].
  /// [GoRouteInformationProvider] uses this method when disposing,
  /// so that it removes its callback when destroyed.
  /// Check out the internal implementation of [GoRouter] and
  /// [GoRouteInformationProvider] to see this in action.
  @override
  void removeListener(VoidCallback listener) {
    routerListener = null;
  }
}
