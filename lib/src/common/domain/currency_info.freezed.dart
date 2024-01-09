// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrencyInfo {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencyInfoCopyWith<CurrencyInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyInfoCopyWith<$Res> {
  factory $CurrencyInfoCopyWith(
          CurrencyInfo value, $Res Function(CurrencyInfo) then) =
      _$CurrencyInfoCopyWithImpl<$Res, CurrencyInfo>;
  @useResult
  $Res call({String code, String name, String symbol});
}

/// @nodoc
class _$CurrencyInfoCopyWithImpl<$Res, $Val extends CurrencyInfo>
    implements $CurrencyInfoCopyWith<$Res> {
  _$CurrencyInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$CurrencyInfoImplCopyWith<$Res>
    implements $CurrencyInfoCopyWith<$Res> {
  factory _$$CurrencyInfoImplCopyWith(
          _$CurrencyInfoImpl value, $Res Function(_$CurrencyInfoImpl) then) =
      __$$CurrencyInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name, String symbol});
}

/// @nodoc
class __$$CurrencyInfoImplCopyWithImpl<$Res>
    extends _$CurrencyInfoCopyWithImpl<$Res, _$CurrencyInfoImpl>
    implements _$$CurrencyInfoImplCopyWith<$Res> {
  __$$CurrencyInfoImplCopyWithImpl(
      _$CurrencyInfoImpl _value, $Res Function(_$CurrencyInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? symbol = null,
  }) {
    return _then(_$CurrencyInfoImpl(
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

class _$CurrencyInfoImpl extends _CurrencyInfo {
  _$CurrencyInfoImpl(
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
    return 'CurrencyInfo(code: $code, name: $name, symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyInfoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, name, symbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyInfoImplCopyWith<_$CurrencyInfoImpl> get copyWith =>
      __$$CurrencyInfoImplCopyWithImpl<_$CurrencyInfoImpl>(this, _$identity);
}

abstract class _CurrencyInfo extends CurrencyInfo {
  factory _CurrencyInfo(
      {required final String code,
      required final String name,
      required final String symbol}) = _$CurrencyInfoImpl;
  _CurrencyInfo._() : super._();

  @override
  String get code;
  @override
  String get name;
  @override
  String get symbol;
  @override
  @JsonKey(ignore: true)
  _$$CurrencyInfoImplCopyWith<_$CurrencyInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
