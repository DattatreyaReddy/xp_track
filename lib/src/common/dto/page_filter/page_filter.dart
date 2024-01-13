import 'package:freezed_annotation/freezed_annotation.dart';

import '../../abstracts/filter_enum.dart';
import '../page_filter_option/page_filter_option.dart';

part 'page_filter.freezed.dart';

@freezed
sealed class PageFilter<Key extends FilterEnum> with _$PageFilter {
  @Assert('''FilterEnum.optionsTypeCheck(key, options)''')

  /// [dependentKeys] are the keys that are dependent on this key.
  ///
  /// If this key is changed, then the dependent keys will be cleared.
  factory PageFilter.radio({
    required Key key,
    required List<PageFilterOption<Key, dynamic>> options,
    List<Key>? dependentKeys,
  }) = PageFilterRadio;

  /// [dependentKeys] are the keys that are dependent on this key.
  ///
  /// If this key is changed, then the dependent keys will be cleared.
  factory PageFilter.checkbox({
    required Key key,
    required List<PageFilterOption<Key, dynamic>> options,
    List<Key>? dependentKeys,
  }) = PageFilterCheckbox;
}
