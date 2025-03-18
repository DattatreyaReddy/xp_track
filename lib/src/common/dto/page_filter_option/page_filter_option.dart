import 'package:freezed_annotation/freezed_annotation.dart';

import '../../abstracts/filter_enum.dart';

part 'page_filter_option.freezed.dart';

@freezed
class PageFilterOption<T extends FilterEnum, U> with _$PageFilterOption {
  @override
  final U value;
  @override
  final String label;
  @override
  final bool Function(Map<FilterEnum, dynamic>)? showOption;

  PageFilterOption({
    required this.value,
    required this.label,
    required this.showOption,
  });
}
