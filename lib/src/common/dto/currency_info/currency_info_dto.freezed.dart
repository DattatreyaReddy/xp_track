// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrencyInfoDto {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;

  /// Create a copy of CurrencyInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrencyInfoDtoCopyWith<CurrencyInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyInfoDtoCopyWith<$Res> {
  factory $CurrencyInfoDtoCopyWith(
          CurrencyInfoDto value, $Res Function(CurrencyInfoDto) then) =
      _$CurrencyInfoDtoCopyWithImpl<$Res, CurrencyInfoDto>;
  @useResult
  $Res call({String code, String name, String symbol});
}

/// @nodoc
class _$CurrencyInfoDtoCopyWithImpl<$Res, $Val extends CurrencyInfoDto>
    implements $CurrencyInfoDtoCopyWith<$Res> {
  _$CurrencyInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrencyInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? symbol = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyInfoDtoImplCopyWith<$Res>
    implements $CurrencyInfoDtoCopyWith<$Res> {
  factory _$$CurrencyInfoDtoImplCopyWith(_$CurrencyInfoDtoImpl value,
          $Res Function(_$CurrencyInfoDtoImpl) then) =
      __$$CurrencyInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name, String symbol});
}

/// @nodoc
class __$$CurrencyInfoDtoImplCopyWithImpl<$Res>
    extends _$CurrencyInfoDtoCopyWithImpl<$Res, _$CurrencyInfoDtoImpl>
    implements _$$CurrencyInfoDtoImplCopyWith<$Res> {
  __$$CurrencyInfoDtoImplCopyWithImpl(
      _$CurrencyInfoDtoImpl _value, $Res Function(_$CurrencyInfoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrencyInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? symbol = null,
  }) {
    return _then(_$CurrencyInfoDtoImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CurrencyInfoDtoImpl extends _CurrencyInfoDto {
  _$CurrencyInfoDtoImpl(
      {required this.code, required this.name, required this.symbol})
      : super._();

  @override
  final String code;
  @override
  final String name;
  @override
  final String symbol;

  @override
  String toString() {
    return 'CurrencyInfoDto(code: $code, name: $name, symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyInfoDtoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, name, symbol);

  /// Create a copy of CurrencyInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyInfoDtoImplCopyWith<_$CurrencyInfoDtoImpl> get copyWith =>
      __$$CurrencyInfoDtoImplCopyWithImpl<_$CurrencyInfoDtoImpl>(
          this, _$identity);
}

abstract class _CurrencyInfoDto extends CurrencyInfoDto {
  factory _CurrencyInfoDto(
      {required final String code,
      required final String name,
      required final String symbol}) = _$CurrencyInfoDtoImpl;
  _CurrencyInfoDto._() : super._();

  @override
  String get code;
  @override
  String get name;
  @override
  String get symbol;

  /// Create a copy of CurrencyInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrencyInfoDtoImplCopyWith<_$CurrencyInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
