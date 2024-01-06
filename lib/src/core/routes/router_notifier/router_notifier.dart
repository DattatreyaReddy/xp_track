import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/utils/extensions/custom_extensions.dart';
import '../../../home/routes/routes.dart';
import '../../../setup/routes/routes.dart';
import '../../controllers/settings_controller.dart';

part 'router_notifier.g.dart';

@riverpod
class RouterNotifier extends _$RouterNotifier implements Listenable {
  VoidCallback? routerListener;

  @override
  void build() {
    // this watch will rebuild the notifier when the auth state changes
    ref.watch(isSetupCompletedProvider);
    ref.listenSelf((_, next) {
      routerListener?.call();
    });
    return;
  }

  /// Redirects the user when our authentication changes
  String? redirect(BuildContext context, GoRouterState routerState) {
    final isSetupCompleted = ref.read(isSetupCompletedProvider);
    if (isSetupCompleted.ifNull()) {
      return const HomeRoute().location;
    } else {
      return const SetupRoute().location;
    }
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
