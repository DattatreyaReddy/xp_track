// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $introductionRoute,
    ];

RouteBase get $introductionRoute => GoRouteData.$route(
      path: '/setup',
      factory: $IntroductionRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'user-name',
          factory: $SetupUserNameRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'currency',
          factory: $SetupCurrencyRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'bank-account',
          factory: $SetupBankAccountRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'category',
          factory: $SetupCategoryRouteExtension._fromState,
        ),
      ],
    );

extension $IntroductionRouteExtension on IntroductionRoute {
  static IntroductionRoute _fromState(GoRouterState state) =>
      const IntroductionRoute();

  String get location => GoRouteData.$location(
        '/setup',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SetupUserNameRouteExtension on SetupUserNameRoute {
  static SetupUserNameRoute _fromState(GoRouterState state) =>
      const SetupUserNameRoute();

  String get location => GoRouteData.$location(
        '/setup/user-name',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SetupCurrencyRouteExtension on SetupCurrencyRoute {
  static SetupCurrencyRoute _fromState(GoRouterState state) =>
      const SetupCurrencyRoute();

  String get location => GoRouteData.$location(
        '/setup/currency',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SetupBankAccountRouteExtension on SetupBankAccountRoute {
  static SetupBankAccountRoute _fromState(GoRouterState state) =>
      const SetupBankAccountRoute();

  String get location => GoRouteData.$location(
        '/setup/bank-account',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SetupCategoryRouteExtension on SetupCategoryRoute {
  static SetupCategoryRoute _fromState(GoRouterState state) =>
      const SetupCategoryRoute();

  String get location => GoRouteData.$location(
        '/setup/category',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
