part of '../custom_extensions.dart';

extension NullableDoubleExtensions on double? {
  bool liesBetween({double lower = 0, double upper = 1}) =>
      this != null ? this! >= lower && this! <= upper : false;
  bool get isNull => this == null;
  bool get isZero => !isNull ? this! == 0 : true;
  bool get isNotZero => !isZero;
  double ifNull([double value = 0]) => this ?? value;
  double ifNullOrNotPositive([double value = 0]) =>
      isNull || this! <= 0 ? value : this!;
  String? toQuantity(
      {String? unit, bool compact = false, int shortenAfter = 100000}) {
    String? result = compact && ((ifNull()) > shortenAfter)
        ? this?.toInt().compact(shortenAfter: shortenAfter)
        : this?.toStringAsFixed(3);
    if (result.isNotBlank && unit.isNotBlank) {
      result = "$result $unit";
    }
    return result;
  }
}
