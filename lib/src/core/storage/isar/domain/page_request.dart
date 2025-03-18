import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_request.freezed.dart';

@freezed
class PageRequest with _$PageRequest {
  @override
  final int page;
  @override
  final int size;

  PageRequest({required this.page, required this.size})
      : assert(page >= 0 && size > 0);
}
