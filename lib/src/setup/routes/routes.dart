import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation/introduction_screen.dart';
import '../presentation/setup_account/setup_account_screen.dart';
import '../presentation/setup_category_screen.dart';
import '../presentation/setup_currency_screen.dart';
import '../presentation/setup_user_name_screen.dart';

part 'routes.g.dart';

abstract class _Routes {
  static const setup = "/setup";
  static const userName = "user-name";
  static const currency = "currency";
  static const account = "account";
  static const category = "category";
}

final GlobalKey<NavigatorState> setupShellNavigatorKey =
    GlobalKey<NavigatorState>();

@TypedGoRoute<IntroductionRoute>(path: _Routes.setup, routes: [
  TypedGoRoute<SetupUserNameRoute>(path: _Routes.userName),
  TypedGoRoute<SetupCurrencyRoute>(path: _Routes.currency),
  TypedGoRoute<SetupAccountRoute>(path: _Routes.account),
  TypedGoRoute<SetupCategoryRoute>(path: _Routes.category),
])
class IntroductionRoute extends GoRouteData {
  const IntroductionRoute();

  @override
  Widget build(context, state) => const IntroductionScreen();
}

class SetupUserNameRoute extends GoRouteData {
  const SetupUserNameRoute();

  @override
  Widget build(context, state) => const SetupUserNameScreen();
}

class SetupCurrencyRoute extends GoRouteData {
  const SetupCurrencyRoute();

  @override
  Widget build(context, state) => const SetupCurrencyScreen();
}

class SetupAccountRoute extends GoRouteData {
  const SetupAccountRoute();

  @override
  Widget build(context, state) => const SetupAccountScreen();
}

class SetupCategoryRoute extends GoRouteData {
  const SetupCategoryRoute();

  @override
  Widget build(context, state) => const SetupCategoryScreen();
}
