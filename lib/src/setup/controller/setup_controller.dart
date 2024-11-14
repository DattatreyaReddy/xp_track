import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/constants/db_keys.dart';
import '../../common/utils/storage/local/shared_preference_utils.dart';

part 'setup_controller.g.dart';

@riverpod
class HasSetupStarted extends _$HasSetupStarted
    with SharedPreferenceClient<bool> {
  @override
  bool? build() => initialize(DBKey.isSetupStarted);
}

@riverpod
class HasSetupCompleted extends _$HasSetupCompleted
    with SharedPreferenceClient<bool> {
  @override
  bool? build() => initialize(DBKey.isSetupCompleted);
}
