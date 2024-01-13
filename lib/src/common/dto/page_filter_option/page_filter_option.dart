import 'package:freezed_annotation/freezed_annotation.dart';

import '../../abstracts/filter_enum.dart';

part 'page_filter_option.freezed.dart';

@freezed
class PageFilterOption<T extends FilterEnum, U> with _$PageFilterOption {
  factory PageFilterOption({
    required U value,
    required String label,
    bool Function(Map<FilterEnum, dynamic>)? showOption,
  }) = _PageFilterOption;
}
