// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_filter_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageFilterOption<T extends FilterEnum, U> {
  U get value => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  bool Function(Map<FilterEnum, dynamic>)? get showOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageFilterOptionCopyWith<T, U, PageFilterOption<T, U>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageFilterOptionCopyWith<T extends FilterEnum, U, $Res> {
  factory $PageFilterOptionCopyWith(PageFilterOption<T, U> value,
          $Res Function(PageFilterOption<T, U>) then) =
      _$PageFilterOptionCopyWithImpl<T, U, $Res, PageFilterOption<T, U>>;
  @useResult
  $Res call(
      {U value,
      String label,
      bool Function(Map<FilterEnum, dynamic>)? showOption});
}

/// @nodoc
class _$PageFilterOptionCopyWithImpl<T extends FilterEnum, U, $Res,
        $Val extends PageFilterOption<T, U>>
    implements $PageFilterOptionCopyWith<T, U, $Res> {
  _$PageFilterOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? label = null,
    Object? showOption = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as U,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      showOption: freezed == showOption
          ? _value.showOption
          : showOption // ignore: cast_nullable_to_non_nullable
              as bool Function(Map<FilterEnum, dynamic>)?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageFilterOptionImplCopyWith<T extends FilterEnum, U, $Res>
    implements $PageFilterOptionCopyWith<T, U, $Res> {
  factory _$$PageFilterOptionImplCopyWith(_$PageFilterOptionImpl<T, U> value,
          $Res Function(_$PageFilterOptionImpl<T, U>) then) =
      __$$PageFilterOptionImplCopyWithImpl<T, U, $Res>;
  @override
  @useResult
  $Res call(
      {U value,
      String label,
      bool Function(Map<FilterEnum, dynamic>)? showOption});
}

/// @nodoc
class __$$PageFilterOptionImplCopyWithImpl<T extends FilterEnum, U, $Res>
    extends _$PageFilterOptionCopyWithImpl<T, U, $Res,
        _$PageFilterOptionImpl<T, U>>
    implements _$$PageFilterOptionImplCopyWith<T, U, $Res> {
  __$$PageFilterOptionImplCopyWithImpl(_$PageFilterOptionImpl<T, U> _value,
      $Res Function(_$PageFilterOptionImpl<T, U>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? label = null,
    Object? showOption = freezed,
  }) {
    return _then(_$PageFilterOptionImpl<T, U>(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as U,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      showOption: freezed == showOption
          ? _value.showOption
          : showOption // ignore: cast_nullable_to_non_nullable
              as bool Function(Map<FilterEnum, dynamic>)?,
    ));
  }
}

/// @nodoc

class _$PageFilterOptionImpl<T extends FilterEnum, U>
    implements _PageFilterOption<T, U> {
  _$PageFilterOptionImpl(
      {required this.value, required this.label, this.showOption});

  @override
  final U value;
  @override
  final String label;
  @override
  final bool Function(Map<FilterEnum, dynamic>)? showOption;

  @override
  String toString() {
    return 'PageFilterOption<$T, $U>(value: $value, label: $label, showOption: $showOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageFilterOptionImpl<T, U> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.showOption, showOption) ||
                other.showOption == showOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(value), label, showOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageFilterOptionImplCopyWith<T, U, _$PageFilterOptionImpl<T, U>>
      get copyWith => __$$PageFilterOptionImplCopyWithImpl<T, U,
          _$PageFilterOptionImpl<T, U>>(this, _$identity);
}

abstract class _PageFilterOption<T extends FilterEnum, U>
    implements PageFilterOption<T, U> {
  factory _PageFilterOption(
          {required final U value,
          required final String label,
          final bool Function(Map<FilterEnum, dynamic>)? showOption}) =
      _$PageFilterOptionImpl<T, U>;

  @override
  U get value;
  @override
  String get label;
  @override
  bool Function(Map<FilterEnum, dynamic>)? get showOption;
  @override
  @JsonKey(ignore: true)
  _$$PageFilterOptionImplCopyWith<T, U, _$PageFilterOptionImpl<T, U>>
      get copyWith => throw _privateConstructorUsedError;
}
