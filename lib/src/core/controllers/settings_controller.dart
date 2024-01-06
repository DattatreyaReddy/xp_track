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
