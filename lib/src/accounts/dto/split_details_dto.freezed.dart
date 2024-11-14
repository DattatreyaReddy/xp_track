// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'split_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SplitDetailsDto _$SplitDetailsDtoFromJson(Map<String, dynamic> json) {
  return _SplitDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$SplitDetailsDto {
  int get splitInto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SplitDetailsDtoCopyWith<SplitDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplitDetailsDtoCopyWith<$Res> {
  factory $SplitDetailsDtoCopyWith(
          SplitDetailsDto value, $Res Function(SplitDetailsDto) then) =
      _$SplitDetailsDtoCopyWithImpl<$Res, SplitDetailsDto>;
  @useResult
  $Res call({int splitInto});
}

/// @nodoc
class _$SplitDetailsDtoCopyWithImpl<$Res, $Val extends SplitDetailsDto>
    implements $SplitDetailsDtoCopyWith<$Res> {
  _$SplitDetailsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? splitInto = null,
  }) {
    return _then(_value.copyWith(
      splitInto: null == splitInto
          ? _value.splitInto
          : splitInto // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplitDetailsDtoImplCopyWith<$Res>
    implements $SplitDetailsDtoCopyWith<$Res> {
  factory _$$SplitDetailsDtoImplCopyWith(_$SplitDetailsDtoImpl value,
          $Res Function(_$SplitDetailsDtoImpl) then) =
      __$$SplitDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int splitInto});
}

/// @nodoc
class __$$SplitDetailsDtoImplCopyWithImpl<$Res>
    extends _$SplitDetailsDtoCopyWithImpl<$Res, _$SplitDetailsDtoImpl>
    implements _$$SplitDetailsDtoImplCopyWith<$Res> {
  __$$SplitDetailsDtoImplCopyWithImpl(
      _$SplitDetailsDtoImpl _value, $Res Function(_$SplitDetailsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? splitInto = null,
  }) {
    return _then(_$SplitDetailsDtoImpl(
      splitInto: null == splitInto
          ? _value.splitInto
          : splitInto // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SplitDetailsDtoImpl extends _SplitDetailsDto {
  _$SplitDetailsDtoImpl({required this.splitInto}) : super._();

  factory _$SplitDetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SplitDetailsDtoImplFromJson(json);

  @override
  final int splitInto;

  @override
  String toString() {
    return 'SplitDetailsDto(splitInto: $splitInto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplitDetailsDtoImpl &&
            (identical(other.splitInto, splitInto) ||
                other.splitInto == splitInto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, splitInto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplitDetailsDtoImplCopyWith<_$SplitDetailsDtoImpl> get copyWith =>
      __$$SplitDetailsDtoImplCopyWithImpl<_$SplitDetailsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SplitDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _SplitDetailsDto extends SplitDetailsDto {
  factory _SplitDetailsDto({required final int splitInto}) =
      _$SplitDetailsDtoImpl;
  _SplitDetailsDto._() : super._();

  factory _SplitDetailsDto.fromJson(Map<String, dynamic> json) =
      _$SplitDetailsDtoImpl.fromJson;

  @override
  int get splitInto;
  @override
  @JsonKey(ignore: true)
  _$$SplitDetailsDtoImplCopyWith<_$SplitDetailsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
