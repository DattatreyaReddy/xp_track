import '../utils/extensions/custom_extensions.dart';
import 'filter_data_type.dart';

typedef RangeValue = ({dynamic startTime, dynamic endTime});

enum FilterType {
  singleValued,
  multiValued,
  range,
  ;

  String? valueToString(dynamic value, FilterDataType dataType) =>
      switch (this) {
        singleValued => value != null && value is! Iterable && value is! Map
            ? dataType.valueToString(value)
            : null,
        multiValued => value is Iterable
            ? value.map(dataType.valueToString).filterNulls.join('|')
            : null,
        range => value is RangeValue
            ? value.endTime == null
                ? "${dataType.valueToString(value.startTime).ifNull()}|"
                : "${dataType.valueToString(value.startTime).ifNull()}|"
                    "${dataType.valueToString(value.endTime).ifNull()}"
            : null,
      };
}
