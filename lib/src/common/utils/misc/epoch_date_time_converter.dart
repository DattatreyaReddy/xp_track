import 'package:json_annotation/json_annotation.dart';

import '../extensions/custom_extensions.dart';

class EpochDateTimeConverter implements JsonConverter<DateTime?, int?> {
  const EpochDateTimeConverter();

  @override
  DateTime? fromJson(int? json) {
    return !json.isNullOrZero
        ? DateTime.fromMillisecondsSinceEpoch(json!)
        : null;
  }

  @override
  int? toJson(DateTime? dateTime) => dateTime?.millisecondsSinceEpoch;
}
