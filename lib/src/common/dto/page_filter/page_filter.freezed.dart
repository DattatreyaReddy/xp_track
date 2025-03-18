// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PageFilter<Key extends FilterEnum> {
  Key get key;
  List<PageFilterOption<Key, dynamic>> get options;
  List<Key>? get dependentKeys;

  /// Create a copy of PageFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageFilterCopyWith<Key, PageFilter<Key>> get copyWith =>
      _$PageFilterCopyWithImpl<Key, PageFilter<Key>>(
          this as PageFilter<Key>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageFilter<Key> &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            const DeepCollectionEquality()
                .equals(other.dependentKeys, dependentKeys));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(options),
      const DeepCollectionEquality().hash(dependentKeys));

  @override
  String toString() {
    return 'PageFilter<$Key>(key: $key, options: $options, dependentKeys: $dependentKeys)';
  }
}

/// @nodoc
abstract mixin class $PageFilterCopyWith<Key extends FilterEnum, $Res> {
  factory $PageFilterCopyWith(
          PageFilter<Key> value, $Res Function(PageFilter<Key>) _then) =
      _$PageFilterCopyWithImpl;
  @useResult
  $Res call(
      {Key key,
      List<PageFilterOption<Key, dynamic>> options,
      List<Key>? dependentKeys});
}

/// @nodoc
class _$PageFilterCopyWithImpl<Key extends FilterEnum, $Res>
    implements $PageFilterCopyWith<Key, $Res> {
  _$PageFilterCopyWithImpl(this._self, this._then);

  final PageFilter<Key> _self;
  final $Res Function(PageFilter<Key>) _then;

  /// Create a copy of PageFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? options = null,
    Object? dependentKeys = freezed,
  }) {
    return _then(_self.copyWith(
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      options: null == options
          ? _self.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PageFilterOption<Key, dynamic>>,
      dependentKeys: freezed == dependentKeys
          ? _self.dependentKeys
          : dependentKeys // ignore: cast_nullable_to_non_nullable
              as List<Key>?,
    ));
  }
}

/// @nodoc

class PageFilterRadio<Key extends FilterEnum> implements PageFilter<Key> {
  PageFilterRadio(
      {required this.key,
      required final List<PageFilterOption<Key, dynamic>> options,
      final List<Key>? dependentKeys})
      : assert(FilterEnum.optionsTypeCheck(key, options)),
        _options = options,
        _dependentKeys = dependentKeys;

  @override
  final Key key;
  final List<PageFilterOption<Key, dynamic>> _options;
  @override
  List<PageFilterOption<Key, dynamic>> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  final List<Key>? _dependentKeys;
  @override
  List<Key>? get dependentKeys {
    final value = _dependentKeys;
    if (value == null) return null;
    if (_dependentKeys is EqualUnmodifiableListView) return _dependentKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of PageFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageFilterRadioCopyWith<Key, PageFilterRadio<Key>> get copyWith =>
      _$PageFilterRadioCopyWithImpl<Key, PageFilterRadio<Key>>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageFilterRadio<Key> &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            const DeepCollectionEquality()
                .equals(other._dependentKeys, _dependentKeys));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(_options),
      const DeepCollectionEquality().hash(_dependentKeys));

  @override
  String toString() {
    return 'PageFilter<$Key>.radio(key: $key, options: $options, dependentKeys: $dependentKeys)';
  }
}

/// @nodoc
abstract mixin class $PageFilterRadioCopyWith<Key extends FilterEnum, $Res>
    implements $PageFilterCopyWith<Key, $Res> {
  factory $PageFilterRadioCopyWith(PageFilterRadio<Key> value,
          $Res Function(PageFilterRadio<Key>) _then) =
      _$PageFilterRadioCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Key key,
      List<PageFilterOption<Key, dynamic>> options,
      List<Key>? dependentKeys});
}

/// @nodoc
class _$PageFilterRadioCopyWithImpl<Key extends FilterEnum, $Res>
    implements $PageFilterRadioCopyWith<Key, $Res> {
  _$PageFilterRadioCopyWithImpl(this._self, this._then);

  final PageFilterRadio<Key> _self;
  final $Res Function(PageFilterRadio<Key>) _then;

  /// Create a copy of PageFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? options = null,
    Object? dependentKeys = freezed,
  }) {
    return _then(PageFilterRadio<Key>(
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      options: null == options
          ? _self._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PageFilterOption<Key, dynamic>>,
      dependentKeys: freezed == dependentKeys
          ? _self._dependentKeys
          : dependentKeys // ignore: cast_nullable_to_non_nullable
              as List<Key>?,
    ));
  }
}

/// @nodoc

class PageFilterCheckbox<Key extends FilterEnum> implements PageFilter<Key> {
  PageFilterCheckbox(
      {required this.key,
      required final List<PageFilterOption<Key, dynamic>> options,
      final List<Key>? dependentKeys})
      : _options = options,
        _dependentKeys = dependentKeys;

  @override
  final Key key;
  final List<PageFilterOption<Key, dynamic>> _options;
  @override
  List<PageFilterOption<Key, dynamic>> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  final List<Key>? _dependentKeys;
  @override
  List<Key>? get dependentKeys {
    final value = _dependentKeys;
    if (value == null) return null;
    if (_dependentKeys is EqualUnmodifiableListView) return _dependentKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of PageFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageFilterCheckboxCopyWith<Key, PageFilterCheckbox<Key>> get copyWith =>
      _$PageFilterCheckboxCopyWithImpl<Key, PageFilterCheckbox<Key>>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageFilterCheckbox<Key> &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            const DeepCollectionEquality()
                .equals(other._dependentKeys, _dependentKeys));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(_options),
      const DeepCollectionEquality().hash(_dependentKeys));

  @override
  String toString() {
    return 'PageFilter<$Key>.checkbox(key: $key, options: $options, dependentKeys: $dependentKeys)';
  }
}

/// @nodoc
abstract mixin class $PageFilterCheckboxCopyWith<Key extends FilterEnum, $Res>
    implements $PageFilterCopyWith<Key, $Res> {
  factory $PageFilterCheckboxCopyWith(PageFilterCheckbox<Key> value,
          $Res Function(PageFilterCheckbox<Key>) _then) =
      _$PageFilterCheckboxCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Key key,
      List<PageFilterOption<Key, dynamic>> options,
      List<Key>? dependentKeys});
}

/// @nodoc
class _$PageFilterCheckboxCopyWithImpl<Key extends FilterEnum, $Res>
    implements $PageFilterCheckboxCopyWith<Key, $Res> {
  _$PageFilterCheckboxCopyWithImpl(this._self, this._then);

  final PageFilterCheckbox<Key> _self;
  final $Res Function(PageFilterCheckbox<Key>) _then;

  /// Create a copy of PageFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? options = null,
    Object? dependentKeys = freezed,
  }) {
    return _then(PageFilterCheckbox<Key>(
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      options: null == options
          ? _self._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PageFilterOption<Key, dynamic>>,
      dependentKeys: freezed == dependentKeys
          ? _self._dependentKeys
          : dependentKeys // ignore: cast_nullable_to_non_nullable
              as List<Key>?,
    ));
  }
}

// dart format on
