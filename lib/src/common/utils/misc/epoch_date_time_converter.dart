import 'package:json_annotation/json_annotation.dart';

import '../extensions/custom_extensions.dart';
import 'app_utils.dart';

class EpochDateTimeConverter implements JsonConverter<DateTime?, int?> {
  const EpochDateTimeConverter();

  @override
  DateTime? fromJson(int? json) => AppUtils.returnIf(
        !json.isNullOrZero,
        DateTime.fromMillisecondsSinceEpoch(json!),
      );

  @override
  int? toJson(DateTime? dateTime) => dateTime?.millisecondsSinceEpoch;
}
