import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/constants/currency_symbols.dart';
import '../../common/constants/db_keys.dart';
import '../../common/dto/currency_info/currency_info_dto.dart';
import '../../common/utils/storage/local/shared_preference_utils.dart';

part 'settings_controller.g.dart';

@riverpod
class UserName extends _$UserName with SharedPreferenceClient<String> {
  @override
  String? build() => initialize(DBKey.userName);
}

@riverpod
class SelectedLocale extends _$SelectedLocale
    with SharedPreferenceClient<String> {
  @override
  String? build() => initialize(DBKey.selectedLocale);
}

@riverpod
class DefaultCurrency extends _$DefaultCurrency
    with SharedPreferenceClient<String> {
  @override
  String? build() => initialize(DBKey.currency);
}

@riverpod
CurrencyInfoDto? defaultCurrencySymbol(Ref ref) =>
    supportedCurrencyMap[ref.watch(defaultCurrencyProvider)];

@riverpod
class IsDebugMode extends _$IsDebugMode with SharedPreferenceClient<bool> {
  @override
  bool? build() => initialize(DBKey.isDebugMode);
}
