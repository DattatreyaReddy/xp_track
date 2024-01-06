import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation/home_screen.dart';
import '../presentation/home_shell_screen.dart';

part 'routes.g.dart';

abstract class _Routes {
  static const home = '/';
}

final GlobalKey<NavigatorState> homeShellNavigatorKey =
    GlobalKey<NavigatorState>();

@TypedShellRoute<HomeShellRouteData>(
  routes: [
    TypedGoRoute<HomeRoute>(path: _Routes.home),
  ],
)
class HomeShellRouteData extends ShellRouteData {
  const HomeShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = homeShellNavigatorKey;

  @override
  Widget builder(context, state, navigator) {
    return HomeShellScreen(child: navigator);
  }
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(context, state) => const HomeScreen();
}
