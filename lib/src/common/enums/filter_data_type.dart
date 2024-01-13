import '../abstracts/value_enum.dart';

enum FilterDataType {
  string,
  date,
  boolean,
  doubleValue,
  integer,
  enumValue,
  ;

  String? valueToString(dynamic value) => switch (this) {
        string => value is String ? value.toString() : null,
        integer => value is int ? value.toString() : null,
        boolean => value is bool ? value.toString() : null,
        doubleValue => value is double ? value.toString() : null,
        date =>
          value is DateTime ? value.millisecondsSinceEpoch.toString() : null,
        enumValue => value is ValueEnum ? value.value : null,
      };
}
