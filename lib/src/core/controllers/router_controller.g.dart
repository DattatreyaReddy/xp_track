// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerConfigHash() => r'fac4f5be8809048c459cdfb6d08db7a8c6178868';

/// See also [routerConfig].
@ProviderFor(routerConfig)
final routerConfigProvider = AutoDisposeProvider<GoRouter>.internal(
  routerConfig,
  name: r'routerConfigProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerConfigHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RouterConfigRef = AutoDisposeProviderRef<GoRouter>;
String _$appConfigStateHash() => r'cfcd36522d20154106f13ced82a4bdd499bb2a0c';

/// See also [AppConfigState].
@ProviderFor(AppConfigState)
final appConfigStateProvider =
    AutoDisposeNotifierProvider<AppConfigState, AppConfig>.internal(
  AppConfigState.new,
  name: r'appConfigStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appConfigStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppConfigState = AutoDisposeNotifier<AppConfig>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
