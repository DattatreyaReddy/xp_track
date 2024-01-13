// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageFilter<Key extends FilterEnum> {
  Key get key => throw _privateConstructorUsedError;
  List<PageFilterOption<Key, dynamic>> get options =>
      throw _privateConstructorUsedError;
  List<Key>? get dependentKeys => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Key key,
            List<PageFilterOption<Key, dynamic>> options,
            List<Key>? dependentKeys)
        radio,
    required TResult Function(
            Key key,
            List<PageFilterOption<Key, dynamic>> options,
            List<Key>? dependentKeys)
        checkbox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Key key, List<PageFilterOption<Key, dynamic>> options,
            List<Key>? dependentKeys)?
        radio,
    TResult? Function(Key key, List<PageFilterOption<Key, dynamic>> options,
            List<Key>? dependentKeys)?
        checkbox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Key key, List<PageFilterOption<Key, dynamic>> options,
            List<Key>? dependentKeys)?
        radio,
    TResult Function(Key key, List<PageFilterOption<Key, dynamic>> options,
            List<Key>? dependentKeys)?
        checkbox,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageFilterRadio<Key> value) radio,
    required TResult Function(PageFilterCheckbox<Key> value) checkbox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PageFilterRadio<Key> value)? radio,
    TResult? Function(PageFilterCheckbox<Key> value)? checkbox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageFilterRadio<Key> value)? radio,
    TResult Function(PageFilterCheckbox<Key> value)? checkbox,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageFilterCopyWith<Key, PageFilter<Key>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageFilterCopyWith<Key extends FilterEnum, $Res> {
  factory $PageFilterCopyWith(
          PageFilter<Key> value, $Res Function(PageFilter<Key>) then) =
      _$PageFilterCopyWithImpl<Key, $Res, PageFilter<Key>>;
  @useResult
  $Res call(
      {Key key,
      List<PageFilterOption<Key, dynamic>> options,
      List<Key>? dependentKeys});
}

/// @nodoc
class _$PageFilterCopyWithImpl<Key extends FilterEnum, $Res,
    $Val extends PageFilter<Key>> implements $PageFilterCopyWith<Key, $Res> {
  _$PageFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? options = null,
    Object? dependentKeys = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PageFilterOption<Key, dynamic>>,
      dependentKeys: freezed == dependentKeys
          ? _value.dependentKeys
          : dependentKeys // ignore: cast_nullable_to_non_nullable
              as List<Key>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageFilterRadioImplCopyWith<Key extends FilterEnum, $Res>
    implements $PageFilterCopyWith<Key, $Res> {
  factory _$$PageFilterRadioImplCopyWith(_$PageFilterRadioImpl<Key> value,
          $Res Function(_$PageFilterRadioImpl<Key>) then) =
      __$$PageFilterRadioImplCopyWithImpl<Key, $Res>;
  @override
  @useResult
  $Res call(
      {Key key,
      List<PageFilterOption<Key, dynamic>> options,
      List<Key>? dependentKeys});
}

/// @nodoc
class __$$PageFilterRadioImplCopyWithImpl<Key extends FilterEnum, $Res>
    extends _$PageFilterCopyWithImpl<Key, $Res, _$PageFilterRadioImpl<Key>>
    implements _$$PageFilterRadioImplCopyWith<Key, $Res> {
  __$$PageFilterRadioImplCopyWithImpl(_$PageFilterRadioImpl<Key> _value,
      $Res Function(_$PageFilterRadioImpl<Key>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? options = null,
    Object? dependentKeys = freezed,
  }) {
    return _then(_$PageFilterRadioImpl<Key>(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PageFilterOption<Key, dynamic>>,
      dependentKeys: freezed == dependentKeys
          ? _value._dependentKeys
          : dependentKeys // ignore: cast_nullable_to_non_nullable
              as List<Key>?,
    ));
  }
}

/// @nodoc

class _$PageFilterRadioImpl<Key extends FilterEnum>
    implements PageFilterRadio<Key> {
  _$PageFilterRadioImpl(
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

  @override
  String toString() {
    return 'PageFilter<$Key>.radio(key: $key, options: $options, dependentKeys: $dependentKeys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageFilterRadioImpl<Key> &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageFilterRadioImplCopyWith<Key, _$PageFilterRadioImpl<Key>>
      get copyWith =>
          __$$PageFilterRadioImplCopyWithImpl<Key, _$PageFilterRadioImpl<Key>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Key key,
            List<PageFilterOption<Key, dynamic>> options,
            List<Key>? dependentKeys)
        radio,
    required TResult Function(
            Key key,
            List<PageFilterOption<Key, dynamic>> options,
            List<Key>? dependentKeys)
        checkbox,
  }) {
    return radio(key, options, dependentKeys);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Key key, List<PageFilterOption<Key, dynamic>> options,
            List<Key>? dependentKeys)?
        radio,
    TResult? Function(Key key, List<PageFilterOption<Key, dynamic>> options,
            List<Key>? dependentKeys)?
        checkbox,
  }) {
    return radio?.call(key, options, dependentKeys);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Key key, List<PageFilterOption<Key, dynamic>> options,
            List<Key>? dependentKeys)?
        radio,
    TResult Function(Key key, List<PageFilterOption<Key, dynamic>> options,
            List<Key>? dependentKeys)?
        checkbox,
    required TResult orElse(),
  }) {
    if (radio != null) {
      return radio(key, options, dependentKeys);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageFilterRadio<Key> value) radio,
    required TResult Function(PageFilterCheckbox<Key> value) checkbox,
  }) {
    return radio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PageFilterRadio<Key> value)? radio,
    TResult? Function(PageFilterCheckbox<Key> value)? checkbox,
  }) {
    return radio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageFilterRadio<Key> value)? radio,
    TResult Function(PageFilterCheckbox<Key> value)? checkbox,
    required TResult orElse(),
  }) {
    if (radio != null) {
      return radio(this);
    }
    return orElse();
  }
}

abstract class PageFilterRadio<Key extends FilterEnum>
    implements PageFilter<Key> {
  factory PageFilterRadio(
      {required final Key key,
      required final List<PageFilterOption<Key, dynamic>> options,
      final List<Key>? dependentKeys}) = _$PageFilterRadioImpl<Key>;

  @override
  Key get key;
  @override
  List<PageFilterOption<Key, dynamic>> get options;
  @override
  List<Key>? get dependentKeys;
  @override
  @JsonKey(ignore: true)
  _$$PageFilterRadioImplCopyWith<Key, _$PageFilterRadioImpl<Key>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PageFilterCheckboxImplCopyWith<Key extends FilterEnum, $Res>
    implements $PageFilterCopyWith<Key, $Res> {
  factory _$$PageFilterCheckboxImplCopyWith(_$PageFilterCheckboxImpl<Key> value,
          $Res Function(_$PageFilterCheckboxImpl<Key>) then) =
      __$$PageFilterCheckboxImplCopyWithImpl<Key, $Res>;
  @override
  @useResult
  $Res call(
      {Key key,
      List<PageFilterOption<Key, dynamic>> options,
      List<Key>? dependentKeys});
}

/// @nodoc
class __$$PageFilterCheckboxImplCopyWithImpl<Key extends FilterEnum, $Res>
    extends _$PageFilterCopyWithImpl<Key, $Res, _$PageFilterCheckboxImpl<Key>>
    implements _$$PageFilterCheckboxImplCopyWith<Key, $Res> {
  __$$PageFilterCheckboxImplCopyWithImpl(_$PageFilterCheckboxImpl<Key> _value,
      $Res Function(_$PageFilterCheckboxImpl<Key>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? options = null,
    Object? dependentKeys = freezed,
  }) {
    return _then(_$PageFilterCheckboxImpl<Key>(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PageFilterOption<Key, dynamic>>,
      dependentKeys: freezed == dependentKeys
          ? _value._dependentKeys
          : dependentKeys // ignore: cast_nullable_to_non_nullable
              as List<Key>?,
    ));
  }
}

/// @nodoc

class _$PageFilterCheckboxImpl<Key extends FilterEnum>
    implements PageFilterCheckbox<Key> {
  _$PageFilterCheckboxImpl(
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

  @override
  String toString() {
    return 'PageFilter<$Key>.checkbox(key: $key, options: $options, dependentKeys: $dependentKeys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageFilterCheckboxImpl<Key> &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageFilterCheckboxImplCopyWith<Key, _$PageFilterCheckboxImpl<Key>>
      get copyWith => __$$PageFilterCheckboxImplCopyWithImpl<Key,
          _$PageFilterCheckboxImpl<Key>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Key key,
            List<PageFilterOption<Key, dynamic>> options,
            List<Key>? dependentKeys)
        radio,
    required TResult Function(
            Key key,
            List<PageFilterOption<Key, dynamic>> options,
            List<Key>? dependentKeys)
        checkbox,
  }) {
    return checkbox(key, options, dependentKeys);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Key key, List<PageFilterOption<Key, dynamic>> options,
            List<Key>? dependentKeys)?
        radio,
    TResult? Function(Key key, List<PageFilterOption<Key, dynamic>> options,
            List<Key>? dependentKeys)?
        checkbox,
  }) {
    return checkbox?.call(key, options, dependentKeys);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Key key, List<PageFilterOption<Key, dynamic>> options,
            List<Key>? dependentKeys)?
        radio,
    TResult Function(Key key, List<PageFilterOption<Key, dynamic>> options,
            List<Key>? dependentKeys)?
        checkbox,
    required TResult orElse(),
  }) {
    if (checkbox != null) {
      return checkbox(key, options, dependentKeys);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageFilterRadio<Key> value) radio,
    required TResult Function(PageFilterCheckbox<Key> value) checkbox,
  }) {
    return checkbox(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PageFilterRadio<Key> value)? radio,
    TResult? Function(PageFilterCheckbox<Key> value)? checkbox,
  }) {
    return checkbox?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageFilterRadio<Key> value)? radio,
    TResult Function(PageFilterCheckbox<Key> value)? checkbox,
    required TResult orElse(),
  }) {
    if (checkbox != null) {
      return checkbox(this);
    }
    return orElse();
  }
}

abstract class PageFilterCheckbox<Key extends FilterEnum>
    implements PageFilter<Key> {
  factory PageFilterCheckbox(
      {required final Key key,
      required final List<PageFilterOption<Key, dynamic>> options,
      final List<Key>? dependentKeys}) = _$PageFilterCheckboxImpl<Key>;

  @override
  Key get key;
  @override
  List<PageFilterOption<Key, dynamic>> get options;
  @override
  List<Key>? get dependentKeys;
  @override
  @JsonKey(ignore: true)
  _$$PageFilterCheckboxImplCopyWith<Key, _$PageFilterCheckboxImpl<Key>>
      get copyWith => throw _privateConstructorUsedError;
}
