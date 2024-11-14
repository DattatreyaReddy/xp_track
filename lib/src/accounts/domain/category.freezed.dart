// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get id => throw _privateConstructorUsedError;
  @EpochDateTimeConverter()
  DateTime get dateCreated => throw _privateConstructorUsedError;
  @EpochDateTimeConverter()
  DateTime get lastModified => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get icon => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  bool get includeInBalance => throw _privateConstructorUsedError;

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {String id,
      @EpochDateTimeConverter() DateTime dateCreated,
      @EpochDateTimeConverter() DateTime lastModified,
      String name,
      int icon,
      int color,
      bool includeInBalance});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateCreated = null,
    Object? lastModified = null,
    Object? name = null,
    Object? icon = null,
    Object? color = null,
    Object? includeInBalance = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @EpochDateTimeConverter() DateTime dateCreated,
      @EpochDateTimeConverter() DateTime lastModified,
      String name,
      int icon,
      int color,
      bool includeInBalance});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateCreated = null,
    Object? lastModified = null,
    Object? name = null,
    Object? icon = null,
    Object? color = null,
    Object? includeInBalance = null,
  }) {
    return _then(_$CategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
class _$CategoryImpl extends _Category {
  _$CategoryImpl(
      {this.id = kDbKeyHolder,
      @EpochDateTimeConverter() required this.dateCreated,
      @EpochDateTimeConverter() required this.lastModified,
      required this.name,
      required this.icon,
      required this.color,
      required this.includeInBalance})
      : super._();

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @EpochDateTimeConverter()
  final DateTime dateCreated;
  @override
  @EpochDateTimeConverter()
  final DateTime lastModified;
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
    return 'Category(id: $id, dateCreated: $dateCreated, lastModified: $lastModified, name: $name, icon: $icon, color: $color, includeInBalance: $includeInBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, dateCreated, lastModified,
      name, icon, color, includeInBalance);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category extends Category {
  factory _Category(
      {final String id,
      @EpochDateTimeConverter() required final DateTime dateCreated,
      @EpochDateTimeConverter() required final DateTime lastModified,
      required final String name,
      required final int icon,
      required final int color,
      required final bool includeInBalance}) = _$CategoryImpl;
  _Category._() : super._();

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  String get id;
  @override
  @EpochDateTimeConverter()
  DateTime get dateCreated;
  @override
  @EpochDateTimeConverter()
  DateTime get lastModified;
  @override
  String get name;
  @override
  int get icon;
  @override
  int get color;
  @override
  bool get includeInBalance;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
