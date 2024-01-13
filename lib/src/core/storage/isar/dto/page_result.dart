import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/page_request.dart';

part 'page_result.freezed.dart';

@freezed
class PageResult<T> with _$PageResult<T> {
  factory PageResult({
    required List<T> content,
    required PageRequest pageRequest,
    required int totalPages,
    required int totalElements,
  }) = _PageResult;
}
