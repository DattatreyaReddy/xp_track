import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation/setup_bank_account_screen.dart';
import '../presentation/setup_category_screen.dart';
import '../presentation/setup_currency_screen.dart';
import '../presentation/setup_screen.dart';
import '../presentation/setup_shell_screen.dart';
import '../presentation/setup_user_name_screen.dart';

part 'routes.g.dart';

abstract class _Routes {
  static const setup = "/setup";
  static const userName = "user-name";
  static const currency = "currency";
  static const bankAccount = "bank-account";
  static const category = "category";
}

final GlobalKey<NavigatorState> setupShellNavigatorKey =
    GlobalKey<NavigatorState>();

@TypedGoRoute<SetupRoute>(
  path: _Routes.setup,
  routes: [
    TypedShellRoute<SetupShellRouteData>(routes: [
      TypedGoRoute<UserNameRoute>(path: _Routes.userName),
      TypedGoRoute<CurrencyRoute>(path: _Routes.currency),
      TypedGoRoute<BankAccountRoute>(path: _Routes.bankAccount),
      TypedGoRoute<CategoryRoute>(path: _Routes.category),
    ]),
  ],
)
class SetupRoute extends GoRouteData {
  const SetupRoute();

  @override
  Widget build(context, state) => const SetupScreen();
}

class SetupShellRouteData extends ShellRouteData {
  const SetupShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = setupShellNavigatorKey;

  @override
  Widget builder(context, state, navigator) =>
      SetupShellScreen(child: navigator);
}

class UserNameRoute extends GoRouteData {
  const UserNameRoute();

  @override
  Widget build(context, state) => const SetupUserNameScreen();
}

class CurrencyRoute extends GoRouteData {
  const CurrencyRoute();

  @override
  Widget build(context, state) => const SetupCurrencyScreen();
}

class BankAccountRoute extends GoRouteData {
  const BankAccountRoute();

  @override
  Widget build(context, state) => const SetupBankAccountScreen();
}

class CategoryRoute extends GoRouteData {
  const CategoryRoute();

  @override
  Widget build(context, state) => const SetupCategoryScreen();
}
