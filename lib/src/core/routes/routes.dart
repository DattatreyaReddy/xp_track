import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation/splash_screen.dart';

part 'routes.g.dart';

abstract class _Routes {
  static const splash = '/splash';
}

@TypedGoRoute<SplashRoute>(path: _Routes.splash)
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(context, state) => const SplashScreen();
}
