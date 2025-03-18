// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CurrencyInfoDto {
  String get code;
  String get name;
  String get symbol;

  /// Create a copy of CurrencyInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CurrencyInfoDtoCopyWith<CurrencyInfoDto> get copyWith =>
      _$CurrencyInfoDtoCopyWithImpl<CurrencyInfoDto>(
          this as CurrencyInfoDto, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CurrencyInfoDto &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, name, symbol);

  @override
  String toString() {
    return 'CurrencyInfoDto(code: $code, name: $name, symbol: $symbol)';
  }
}

/// @nodoc
abstract mixin class $CurrencyInfoDtoCopyWith<$Res> {
  factory $CurrencyInfoDtoCopyWith(
          CurrencyInfoDto value, $Res Function(CurrencyInfoDto) _then) =
      _$CurrencyInfoDtoCopyWithImpl;
  @useResult
  $Res call({String code, String name, String symbol});
}

/// @nodoc
class _$CurrencyInfoDtoCopyWithImpl<$Res>
    implements $CurrencyInfoDtoCopyWith<$Res> {
  _$CurrencyInfoDtoCopyWithImpl(this._self, this._then);

  final CurrencyInfoDto _self;
  final $Res Function(CurrencyInfoDto) _then;

  /// Create a copy of CurrencyInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? symbol = null,
  }) {
    return _then(CurrencyInfoDto(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _self.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
