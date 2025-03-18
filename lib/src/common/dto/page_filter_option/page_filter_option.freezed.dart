// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_filter_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PageFilterOption<T extends FilterEnum, U> {
  U get value;
  String get label;
  bool Function(Map<FilterEnum, dynamic>)? get showOption;

  /// Create a copy of PageFilterOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageFilterOptionCopyWith<T, U, PageFilterOption<T, U>> get copyWith =>
      _$PageFilterOptionCopyWithImpl<T, U, PageFilterOption<T, U>>(
          this as PageFilterOption<T, U>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageFilterOption<T, U> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.showOption, showOption) ||
                other.showOption == showOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(value), label, showOption);

  @override
  String toString() {
    return 'PageFilterOption<$T, $U>(value: $value, label: $label, showOption: $showOption)';
  }
}

/// @nodoc
abstract mixin class $PageFilterOptionCopyWith<T extends FilterEnum, U, $Res> {
  factory $PageFilterOptionCopyWith(PageFilterOption<T, U> value,
          $Res Function(PageFilterOption<T, U>) _then) =
      _$PageFilterOptionCopyWithImpl;
  @useResult
  $Res call(
      {U value,
      String label,
      bool Function(Map<FilterEnum, dynamic>)? showOption});
}

/// @nodoc
class _$PageFilterOptionCopyWithImpl<T extends FilterEnum, U, $Res>
    implements $PageFilterOptionCopyWith<T, U, $Res> {
  _$PageFilterOptionCopyWithImpl(this._self, this._then);

  final PageFilterOption<T, U> _self;
  final $Res Function(PageFilterOption<T, U>) _then;

  /// Create a copy of PageFilterOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? label = null,
    Object? showOption = freezed,
  }) {
    return _then(PageFilterOption(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as U,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      showOption: freezed == showOption
          ? _self.showOption
          : showOption // ignore: cast_nullable_to_non_nullable
              as bool Function(Map<FilterEnum, dynamic>)?,
    ));
  }
}

// dart format on
