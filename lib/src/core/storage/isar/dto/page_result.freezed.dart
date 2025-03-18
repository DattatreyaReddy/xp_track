// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PageResult<T> {
  List<T> get content;
  PageRequest get pageRequest;
  int get totalPages;
  int get totalElements;

  /// Create a copy of PageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageResultCopyWith<T, PageResult<T>> get copyWith =>
      _$PageResultCopyWithImpl<T, PageResult<T>>(
          this as PageResult<T>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageResult<T> &&
            const DeepCollectionEquality().equals(other.content, content) &&
            (identical(other.pageRequest, pageRequest) ||
                other.pageRequest == pageRequest) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalElements, totalElements) ||
                other.totalElements == totalElements));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      pageRequest,
      totalPages,
      totalElements);

  @override
  String toString() {
    return 'PageResult<$T>(content: $content, pageRequest: $pageRequest, totalPages: $totalPages, totalElements: $totalElements)';
  }
}

/// @nodoc
abstract mixin class $PageResultCopyWith<T, $Res> {
  factory $PageResultCopyWith(
          PageResult<T> value, $Res Function(PageResult<T>) _then) =
      _$PageResultCopyWithImpl;
  @useResult
  $Res call(
      {List<T> content,
      PageRequest pageRequest,
      int totalPages,
      int totalElements});
}

/// @nodoc
class _$PageResultCopyWithImpl<T, $Res>
    implements $PageResultCopyWith<T, $Res> {
  _$PageResultCopyWithImpl(this._self, this._then);

  final PageResult<T> _self;
  final $Res Function(PageResult<T>) _then;

  /// Create a copy of PageResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? pageRequest = null,
    Object? totalPages = null,
    Object? totalElements = null,
  }) {
    return _then(PageResult(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<T>,
      pageRequest: null == pageRequest
          ? _self.pageRequest
          : pageRequest // ignore: cast_nullable_to_non_nullable
              as PageRequest,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: null == totalElements
          ? _self.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
