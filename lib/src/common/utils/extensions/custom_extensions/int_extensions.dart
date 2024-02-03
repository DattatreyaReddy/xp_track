part of '../custom_extensions.dart';

extension IntExtensions on int? {
  bool get isNull => this == null;
  bool get isZero => this != null ? this! == 0 : false;
  bool get isNullOrZero => isNull || isZero;
  bool get isValidIsarId =>
      this != null && this! >= 0 && this! != Isar.autoIncrement;
  bool liesBetween({int lower = 0, int upper = 1}) =>
      this != null ? this! >= lower && this! <= upper : false;
  bool isGreaterThan(int i) => isNull ? false : this! > i;
  bool isLessThan(int i) => isNull ? false : this! < i;

  int ifNull([int value = 0]) => isNull ? value : this!;

  int ifNonPositive([int value = 0]) => isNull || this! < 0 ? value : this!;

  bool? get toBool => (this == null || this == 0) ? null : this == 1;

  String? padLeft({
    int width = 2,
    String padding = '0',
    bool padOnZero = false,
  }) {
    if (isNull) return null;
    if (!padOnZero && this == 0) return toString();
    return toString().padLeft(width, padding);
  }

  String? compact({
    int width = 2,
    String padding = '0',
    bool addPrefixAndSuffix = false,
    String prefix = " (",
    String suffix = ")",
    bool returnNullOnZero = false,
    int shortenAfter = 1000,
  }) {
    String? result;
    if (this == null) {
      result = null;
    } else if (this == 0) {
      returnNullOnZero ? null : toString();
    } else if (this! > shortenAfter) {
      result = NumberFormat.compact(locale: const Locale('en', 'IN').toString())
          .format(this);
    } else {
      result = padLeft(width: width, padding: padding);
    }
    if (addPrefixAndSuffix) {
      result = result.wrap(prefix: prefix, suffix: suffix);
    }
    return result;
  }

  String get toDateString {
    if (isNull) return "";
    return DateTime.fromMillisecondsSinceEpoch(this!).toDateString;
  }

  String get toDateStringFromSeconds {
    if (isNull) return "";
    return DateTime.fromMillisecondsSinceEpoch(this! * 1000).toDateString;
  }

  String get toDaysAgoFromSeconds {
    if (isNull) return "";
    return DateTime.fromMillisecondsSinceEpoch(this! * 1000).convertToDaysAgo;
  }

  String get toDaysAgo {
    if (isNull) return "";
    return DateTime.fromMillisecondsSinceEpoch(this!).convertToDaysAgo;
  }

  bool isSameDayAs(int? anotherDate) {
    if (isNull || anotherDate.isNull) return false;
    return DateTime.fromMillisecondsSinceEpoch(this! * 1000)
        .isSameDay(DateTime.fromMillisecondsSinceEpoch(anotherDate! * 1000));
  }
}
