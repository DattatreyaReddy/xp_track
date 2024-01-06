// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $setupRoute,
    ];

RouteBase get $setupRoute => GoRouteData.$route(
      path: '/setup',
      factory: $SetupRouteExtension._fromState,
      routes: [
        ShellRouteData.$route(
          navigatorKey: SetupShellRouteData.$navigatorKey,
          factory: $SetupShellRouteDataExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'user-name',
              factory: $UserNameRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'currency',
              factory: $CurrencyRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'bank-account',
              factory: $BankAccountRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'category',
              factory: $CategoryRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $SetupRouteExtension on SetupRoute {
  static SetupRoute _fromState(GoRouterState state) => const SetupRoute();

  String get location => GoRouteData.$location(
        '/setup',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SetupShellRouteDataExtension on SetupShellRouteData {
  static SetupShellRouteData _fromState(GoRouterState state) =>
      const SetupShellRouteData();
}

extension $UserNameRouteExtension on UserNameRoute {
  static UserNameRoute _fromState(GoRouterState state) => const UserNameRoute();

  String get location => GoRouteData.$location(
        '/setup/user-name',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CurrencyRouteExtension on CurrencyRoute {
  static CurrencyRoute _fromState(GoRouterState state) => const CurrencyRoute();

  String get location => GoRouteData.$location(
        '/setup/currency',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BankAccountRouteExtension on BankAccountRoute {
  static BankAccountRoute _fromState(GoRouterState state) =>
      const BankAccountRoute();

  String get location => GoRouteData.$location(
        '/setup/bank-account',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CategoryRouteExtension on CategoryRoute {
  static CategoryRoute _fromState(GoRouterState state) => const CategoryRoute();

  String get location => GoRouteData.$location(
        '/setup/category',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
