// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) {
  return _CategoryDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryDto {
  int? get categoryId => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  DateTime? get dateCreated => throw _privateConstructorUsedError;
  DateTime? get lastModified => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get icon => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  bool get includeInBalance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDtoCopyWith<CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDtoCopyWith<$Res> {
  factory $CategoryDtoCopyWith(
          CategoryDto value, $Res Function(CategoryDto) then) =
      _$CategoryDtoCopyWithImpl<$Res, CategoryDto>;
  @useResult
  $Res call(
      {int? categoryId,
      bool? isDeleted,
      DateTime? dateCreated,
      DateTime? lastModified,
      String name,
      int icon,
      int color,
      bool includeInBalance});
}

/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res, $Val extends CategoryDto>
    implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? isDeleted = freezed,
    Object? dateCreated = freezed,
    Object? lastModified = freezed,
    Object? name = null,
    Object? icon = null,
    Object? color = null,
    Object? includeInBalance = null,
  }) {
    return _then(_value.copyWith(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      includeInBalance: null == includeInBalance
          ? _value.includeInBalance
          : includeInBalance // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryDtoImplCopyWith<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  factory _$$CategoryDtoImplCopyWith(
          _$CategoryDtoImpl value, $Res Function(_$CategoryDtoImpl) then) =
      __$$CategoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? categoryId,
      bool? isDeleted,
      DateTime? dateCreated,
      DateTime? lastModified,
      String name,
      int icon,
      int color,
      bool includeInBalance});
}

/// @nodoc
class __$$CategoryDtoImplCopyWithImpl<$Res>
    extends _$CategoryDtoCopyWithImpl<$Res, _$CategoryDtoImpl>
    implements _$$CategoryDtoImplCopyWith<$Res> {
  __$$CategoryDtoImplCopyWithImpl(
      _$CategoryDtoImpl _value, $Res Function(_$CategoryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? isDeleted = freezed,
    Object? dateCreated = freezed,
    Object? lastModified = freezed,
    Object? name = null,
    Object? icon = null,
    Object? color = null,
    Object? includeInBalance = null,
  }) {
    return _then(_$CategoryDtoImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      includeInBalance: null == includeInBalance
          ? _value.includeInBalance
          : includeInBalance // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryDtoImpl extends _CategoryDto {
  _$CategoryDtoImpl(
      {this.categoryId,
      this.isDeleted,
      this.dateCreated,
      this.lastModified,
      required this.name,
      required this.icon,
      required this.color,
      required this.includeInBalance})
      : super._();

  factory _$CategoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDtoImplFromJson(json);

  @override
  final int? categoryId;
  @override
  final bool? isDeleted;
  @override
  final DateTime? dateCreated;
  @override
  final DateTime? lastModified;
  @override
  final String name;
  @override
  final int icon;
  @override
  final int color;
  @override
  final bool includeInBalance;

  @override
  String toString() {
    return 'CategoryDto(categoryId: $categoryId, isDeleted: $isDeleted, dateCreated: $dateCreated, lastModified: $lastModified, name: $name, icon: $icon, color: $color, includeInBalance: $includeInBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDtoImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.includeInBalance, includeInBalance) ||
                other.includeInBalance == includeInBalance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, categoryId, isDeleted,
      dateCreated, lastModified, name, icon, color, includeInBalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDtoImplCopyWith<_$CategoryDtoImpl> get copyWith =>
      __$$CategoryDtoImplCopyWithImpl<_$CategoryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDtoImplToJson(
      this,
    );
  }
}

abstract class _CategoryDto extends CategoryDto {
  factory _CategoryDto(
      {final int? categoryId,
      final bool? isDeleted,
      final DateTime? dateCreated,
      final DateTime? lastModified,
      required final String name,
      required final int icon,
      required final int color,
      required final bool includeInBalance}) = _$CategoryDtoImpl;
  _CategoryDto._() : super._();

  factory _CategoryDto.fromJson(Map<String, dynamic> json) =
      _$CategoryDtoImpl.fromJson;

  @override
  int? get categoryId;
  @override
  bool? get isDeleted;
  @override
  DateTime? get dateCreated;
  @override
  DateTime? get lastModified;
  @override
  String get name;
  @override
  int get icon;
  @override
  int get color;
  @override
  bool get includeInBalance;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDtoImplCopyWith<_$CategoryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
