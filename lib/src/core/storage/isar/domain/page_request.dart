import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_request.freezed.dart';
part 'page_request.g.dart';

@freezed
class PageRequest with _$PageRequest {
  @Assert('page >= 0')
  @Assert('size > 0')
  factory PageRequest({
    /// zero-based page index, must not be negative
    required int page,

    /// the size of the page to be returned, must be greater than 0.
    required int size,
  }) = _PageRequest;

  factory PageRequest.fromJson(Map<String, dynamic> json) =>
      _$PageRequestFromJson(json);
}
