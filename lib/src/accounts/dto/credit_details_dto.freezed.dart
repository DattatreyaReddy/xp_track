// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreditDetailsDto _$CreditDetailsDtoFromJson(Map<String, dynamic> json) {
  return _CreditDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$CreditDetailsDto {
  double get limit => throw _privateConstructorUsedError;
  int get billingDate => throw _privateConstructorUsedError;
  int get gracePeriodInDays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditDetailsDtoCopyWith<CreditDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditDetailsDtoCopyWith<$Res> {
  factory $CreditDetailsDtoCopyWith(
          CreditDetailsDto value, $Res Function(CreditDetailsDto) then) =
      _$CreditDetailsDtoCopyWithImpl<$Res, CreditDetailsDto>;
  @useResult
  $Res call({double limit, int billingDate, int gracePeriodInDays});
}

/// @nodoc
class _$CreditDetailsDtoCopyWithImpl<$Res, $Val extends CreditDetailsDto>
    implements $CreditDetailsDtoCopyWith<$Res> {
  _$CreditDetailsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? billingDate = null,
    Object? gracePeriodInDays = null,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as double,
      billingDate: null == billingDate
          ? _value.billingDate
          : billingDate // ignore: cast_nullable_to_non_nullable
              as int,
      gracePeriodInDays: null == gracePeriodInDays
          ? _value.gracePeriodInDays
          : gracePeriodInDays // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditDetailsDtoImplCopyWith<$Res>
    implements $CreditDetailsDtoCopyWith<$Res> {
  factory _$$CreditDetailsDtoImplCopyWith(_$CreditDetailsDtoImpl value,
          $Res Function(_$CreditDetailsDtoImpl) then) =
      __$$CreditDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double limit, int billingDate, int gracePeriodInDays});
}

/// @nodoc
class __$$CreditDetailsDtoImplCopyWithImpl<$Res>
    extends _$CreditDetailsDtoCopyWithImpl<$Res, _$CreditDetailsDtoImpl>
    implements _$$CreditDetailsDtoImplCopyWith<$Res> {
  __$$CreditDetailsDtoImplCopyWithImpl(_$CreditDetailsDtoImpl _value,
      $Res Function(_$CreditDetailsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? billingDate = null,
    Object? gracePeriodInDays = null,
  }) {
    return _then(_$CreditDetailsDtoImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as double,
      billingDate: null == billingDate
          ? _value.billingDate
          : billingDate // ignore: cast_nullable_to_non_nullable
              as int,
      gracePeriodInDays: null == gracePeriodInDays
          ? _value.gracePeriodInDays
          : gracePeriodInDays // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreditDetailsDtoImpl extends _CreditDetailsDto {
  _$CreditDetailsDtoImpl(
      {required this.limit,
      required this.billingDate,
      required this.gracePeriodInDays})
      : super._();

  factory _$CreditDetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditDetailsDtoImplFromJson(json);

  @override
  final double limit;
  @override
  final int billingDate;
  @override
  final int gracePeriodInDays;

  @override
  String toString() {
    return 'CreditDetailsDto(limit: $limit, billingDate: $billingDate, gracePeriodInDays: $gracePeriodInDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditDetailsDtoImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.billingDate, billingDate) ||
                other.billingDate == billingDate) &&
            (identical(other.gracePeriodInDays, gracePeriodInDays) ||
                other.gracePeriodInDays == gracePeriodInDays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, limit, billingDate, gracePeriodInDays);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditDetailsDtoImplCopyWith<_$CreditDetailsDtoImpl> get copyWith =>
      __$$CreditDetailsDtoImplCopyWithImpl<_$CreditDetailsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _CreditDetailsDto extends CreditDetailsDto {
  factory _CreditDetailsDto(
      {required final double limit,
      required final int billingDate,
      required final int gracePeriodInDays}) = _$CreditDetailsDtoImpl;
  _CreditDetailsDto._() : super._();

  factory _CreditDetailsDto.fromJson(Map<String, dynamic> json) =
      _$CreditDetailsDtoImpl.fromJson;

  @override
  double get limit;
  @override
  int get billingDate;
  @override
  int get gracePeriodInDays;
  @override
  @JsonKey(ignore: true)
  _$$CreditDetailsDtoImplCopyWith<_$CreditDetailsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
