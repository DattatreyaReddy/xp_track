import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/page_request.dart';

part 'page_result.freezed.dart';

@freezed
class PageResult<T> with _$PageResult<T> {
  @override
  final List<T> content;

  @override
  final PageRequest pageRequest;

  @override
  final int totalPages;

  @override
  final int totalElements;

  PageResult({
    required this.content,
    required this.pageRequest,
    required this.totalPages,
    required this.totalElements,
  });
}
