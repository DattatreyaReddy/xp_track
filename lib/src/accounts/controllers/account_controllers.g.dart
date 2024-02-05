// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_controllers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$accountsHash() => r'9e5a3097983c905345b291ca9f7265d52025a7b5';

/// See also [accounts].
@ProviderFor(accounts)
final accountsProvider = AutoDisposeStreamProvider<List<AccountDto>>.internal(
  accounts,
  name: r'accountsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$accountsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AccountsRef = AutoDisposeStreamProviderRef<List<AccountDto>>;
String _$categoriesHash() => r'13b39808efdcc52d4c136761d78f1729ce8051ea';

/// See also [categories].
@ProviderFor(categories)
final categoriesProvider =
    AutoDisposeStreamProvider<List<CategoryDto>>.internal(
  categories,
  name: r'categoriesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$categoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CategoriesRef = AutoDisposeStreamProviderRef<List<CategoryDto>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
