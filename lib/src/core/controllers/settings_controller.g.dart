// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$defaultCurrencySymbolHash() =>
    r'b6c6909cdb841d93dcf160f2b901fb71da601985';

/// See also [defaultCurrencySymbol].
@ProviderFor(defaultCurrencySymbol)
final defaultCurrencySymbolProvider =
    AutoDisposeProvider<CurrencyInfoDto?>.internal(
  defaultCurrencySymbol,
  name: r'defaultCurrencySymbolProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$defaultCurrencySymbolHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DefaultCurrencySymbolRef = AutoDisposeProviderRef<CurrencyInfoDto?>;
String _$userNameHash() => r'af96dd4170b439889373604b76f1cc03612d5478';

/// See also [UserName].
@ProviderFor(UserName)
final userNameProvider =
    AutoDisposeNotifierProvider<UserName, String?>.internal(
  UserName.new,
  name: r'userNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserName = AutoDisposeNotifier<String?>;
String _$selectedLocaleHash() => r'cd9b62429467d511121d5897f97a69ab429cab02';

/// See also [SelectedLocale].
@ProviderFor(SelectedLocale)
final selectedLocaleProvider =
    AutoDisposeNotifierProvider<SelectedLocale, String?>.internal(
  SelectedLocale.new,
  name: r'selectedLocaleProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedLocaleHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedLocale = AutoDisposeNotifier<String?>;
String _$defaultCurrencyHash() => r'8d2be3597d978421f97f0e85c390b7b8020ff47b';

/// See also [DefaultCurrency].
@ProviderFor(DefaultCurrency)
final defaultCurrencyProvider =
    AutoDisposeNotifierProvider<DefaultCurrency, String?>.internal(
  DefaultCurrency.new,
  name: r'defaultCurrencyProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$defaultCurrencyHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DefaultCurrency = AutoDisposeNotifier<String?>;
String _$isDebugModeHash() => r'e43bf76b0dccb9e72e022b355ab9f88d334b8541';

/// See also [IsDebugMode].
@ProviderFor(IsDebugMode)
final isDebugModeProvider =
    AutoDisposeNotifierProvider<IsDebugMode, bool?>.internal(
  IsDebugMode.new,
  name: r'isDebugModeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isDebugModeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$IsDebugMode = AutoDisposeNotifier<bool?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
