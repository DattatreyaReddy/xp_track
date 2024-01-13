import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/constants/db_keys.dart';
import '../../common/utils/storage/local/shared_preference_utils.dart';

part 'settings_controller.g.dart';

@riverpod
class IsSetupCompleted extends _$IsSetupCompleted
    with SharedPreferenceClient<bool> {
  @override
  bool? build() => initialize(DBKey.isSetupCompleted);
}

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
class IsDebugMode extends _$IsDebugMode with SharedPreferenceClient<bool> {
  @override
  bool? build() => initialize(DBKey.isDebugMode);
}
