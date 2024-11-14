// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PageResult<T> {
  List<T> get content => throw _privateConstructorUsedError;
  PageRequest get pageRequest => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;

  /// Create a copy of PageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageResultCopyWith<T, PageResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageResultCopyWith<T, $Res> {
  factory $PageResultCopyWith(
          PageResult<T> value, $Res Function(PageResult<T>) then) =
      _$PageResultCopyWithImpl<T, $Res, PageResult<T>>;
  @useResult
  $Res call(
      {List<T> content,
      PageRequest pageRequest,
      int totalPages,
      int totalElements});

  $PageRequestCopyWith<$Res> get pageRequest;
}

/// @nodoc
class _$PageResultCopyWithImpl<T, $Res, $Val extends PageResult<T>>
    implements $PageResultCopyWith<T, $Res> {
  _$PageResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<T>,
      pageRequest: null == pageRequest
          ? _value.pageRequest
          : pageRequest // ignore: cast_nullable_to_non_nullable
              as PageRequest,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of PageResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageRequestCopyWith<$Res> get pageRequest {
    return $PageRequestCopyWith<$Res>(_value.pageRequest, (value) {
      return _then(_value.copyWith(pageRequest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PageResultImplCopyWith<T, $Res>
    implements $PageResultCopyWith<T, $Res> {
  factory _$$PageResultImplCopyWith(
          _$PageResultImpl<T> value, $Res Function(_$PageResultImpl<T>) then) =
      __$$PageResultImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {List<T> content,
      PageRequest pageRequest,
      int totalPages,
      int totalElements});

  @override
  $PageRequestCopyWith<$Res> get pageRequest;
}

/// @nodoc
class __$$PageResultImplCopyWithImpl<T, $Res>
    extends _$PageResultCopyWithImpl<T, $Res, _$PageResultImpl<T>>
    implements _$$PageResultImplCopyWith<T, $Res> {
  __$$PageResultImplCopyWithImpl(
      _$PageResultImpl<T> _value, $Res Function(_$PageResultImpl<T>) _then)
      : super(_value, _then);

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
    return _then(_$PageResultImpl<T>(
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<T>,
      pageRequest: null == pageRequest
          ? _value.pageRequest
          : pageRequest // ignore: cast_nullable_to_non_nullable
              as PageRequest,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PageResultImpl<T> implements _PageResult<T> {
  _$PageResultImpl(
      {required final List<T> content,
      required this.pageRequest,
      required this.totalPages,
      required this.totalElements})
      : _content = content;

  final List<T> _content;
  @override
  List<T> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final PageRequest pageRequest;
  @override
  final int totalPages;
  @override
  final int totalElements;

  @override
  String toString() {
    return 'PageResult<$T>(content: $content, pageRequest: $pageRequest, totalPages: $totalPages, totalElements: $totalElements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageResultImpl<T> &&
            const DeepCollectionEquality().equals(other._content, _content) &&
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
      const DeepCollectionEquality().hash(_content),
      pageRequest,
      totalPages,
      totalElements);

  /// Create a copy of PageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageResultImplCopyWith<T, _$PageResultImpl<T>> get copyWith =>
      __$$PageResultImplCopyWithImpl<T, _$PageResultImpl<T>>(this, _$identity);
}

abstract class _PageResult<T> implements PageResult<T> {
  factory _PageResult(
      {required final List<T> content,
      required final PageRequest pageRequest,
      required final int totalPages,
      required final int totalElements}) = _$PageResultImpl<T>;

  @override
  List<T> get content;
  @override
  PageRequest get pageRequest;
  @override
  int get totalPages;
  @override
  int get totalElements;

  /// Create a copy of PageResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageResultImplCopyWith<T, _$PageResultImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
