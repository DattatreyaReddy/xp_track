// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  String get id => throw _privateConstructorUsedError;
  @EpochDateTimeConverter()
  DateTime get dateCreated => throw _privateConstructorUsedError;
  @EpochDateTimeConverter()
  DateTime get lastModified => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get icon => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  int get orderNumber => throw _privateConstructorUsedError;
  bool get includeInBalance => throw _privateConstructorUsedError;
  AccountType get accountType => throw _privateConstructorUsedError;
  CreditDetails? get creditDetails => throw _privateConstructorUsedError;
  SplitDetails? get splitDetails => throw _privateConstructorUsedError;

  /// Serializes this Account to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call(
      {String id,
      @EpochDateTimeConverter() DateTime dateCreated,
      @EpochDateTimeConverter() DateTime lastModified,
      String name,
      int icon,
      int color,
      String currencyCode,
      int orderNumber,
      bool includeInBalance,
      AccountType accountType,
      CreditDetails? creditDetails,
      SplitDetails? splitDetails});

  $CreditDetailsCopyWith<$Res>? get creditDetails;
  $SplitDetailsCopyWith<$Res>? get splitDetails;
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Account
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
    Object? currencyCode = null,
    Object? orderNumber = null,
    Object? includeInBalance = null,
    Object? accountType = null,
    Object? creditDetails = freezed,
    Object? splitDetails = freezed,
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
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int,
      includeInBalance: null == includeInBalance
          ? _value.includeInBalance
          : includeInBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as AccountType,
      creditDetails: freezed == creditDetails
          ? _value.creditDetails
          : creditDetails // ignore: cast_nullable_to_non_nullable
              as CreditDetails?,
      splitDetails: freezed == splitDetails
          ? _value.splitDetails
          : splitDetails // ignore: cast_nullable_to_non_nullable
              as SplitDetails?,
    ) as $Val);
  }

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreditDetailsCopyWith<$Res>? get creditDetails {
    if (_value.creditDetails == null) {
      return null;
    }

    return $CreditDetailsCopyWith<$Res>(_value.creditDetails!, (value) {
      return _then(_value.copyWith(creditDetails: value) as $Val);
    });
  }

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SplitDetailsCopyWith<$Res>? get splitDetails {
    if (_value.splitDetails == null) {
      return null;
    }

    return $SplitDetailsCopyWith<$Res>(_value.splitDetails!, (value) {
      return _then(_value.copyWith(splitDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountImplCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$AccountImplCopyWith(
          _$AccountImpl value, $Res Function(_$AccountImpl) then) =
      __$$AccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @EpochDateTimeConverter() DateTime dateCreated,
      @EpochDateTimeConverter() DateTime lastModified,
      String name,
      int icon,
      int color,
      String currencyCode,
      int orderNumber,
      bool includeInBalance,
      AccountType accountType,
      CreditDetails? creditDetails,
      SplitDetails? splitDetails});

  @override
  $CreditDetailsCopyWith<$Res>? get creditDetails;
  @override
  $SplitDetailsCopyWith<$Res>? get splitDetails;
}

/// @nodoc
class __$$AccountImplCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$AccountImpl>
    implements _$$AccountImplCopyWith<$Res> {
  __$$AccountImplCopyWithImpl(
      _$AccountImpl _value, $Res Function(_$AccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of Account
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
    Object? currencyCode = null,
    Object? orderNumber = null,
    Object? includeInBalance = null,
    Object? accountType = null,
    Object? creditDetails = freezed,
    Object? splitDetails = freezed,
  }) {
    return _then(_$AccountImpl(
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
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int,
      includeInBalance: null == includeInBalance
          ? _value.includeInBalance
          : includeInBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as AccountType,
      creditDetails: freezed == creditDetails
          ? _value.creditDetails
          : creditDetails // ignore: cast_nullable_to_non_nullable
              as CreditDetails?,
      splitDetails: freezed == splitDetails
          ? _value.splitDetails
          : splitDetails // ignore: cast_nullable_to_non_nullable
              as SplitDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountImpl extends _Account {
  _$AccountImpl(
      {this.id = kDbKeyHolder,
      @EpochDateTimeConverter() required this.dateCreated,
      @EpochDateTimeConverter() required this.lastModified,
      required this.name,
      required this.icon,
      required this.color,
      required this.currencyCode,
      required this.orderNumber,
      required this.includeInBalance,
      required this.accountType,
      this.creditDetails,
      this.splitDetails})
      : assert(accountType != AccountType.credit || creditDetails != null),
        assert(accountType != AccountType.split || splitDetails != null),
        super._();

  factory _$AccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountImplFromJson(json);

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
  final String currencyCode;
  @override
  final int orderNumber;
  @override
  final bool includeInBalance;
  @override
  final AccountType accountType;
  @override
  final CreditDetails? creditDetails;
  @override
  final SplitDetails? splitDetails;

  @override
  String toString() {
    return 'Account(id: $id, dateCreated: $dateCreated, lastModified: $lastModified, name: $name, icon: $icon, color: $color, currencyCode: $currencyCode, orderNumber: $orderNumber, includeInBalance: $includeInBalance, accountType: $accountType, creditDetails: $creditDetails, splitDetails: $splitDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.includeInBalance, includeInBalance) ||
                other.includeInBalance == includeInBalance) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.creditDetails, creditDetails) ||
                other.creditDetails == creditDetails) &&
            (identical(other.splitDetails, splitDetails) ||
                other.splitDetails == splitDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      dateCreated,
      lastModified,
      name,
      icon,
      color,
      currencyCode,
      orderNumber,
      includeInBalance,
      accountType,
      creditDetails,
      splitDetails);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      __$$AccountImplCopyWithImpl<_$AccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountImplToJson(
      this,
    );
  }
}

abstract class _Account extends Account {
  factory _Account(
      {final String id,
      @EpochDateTimeConverter() required final DateTime dateCreated,
      @EpochDateTimeConverter() required final DateTime lastModified,
      required final String name,
      required final int icon,
      required final int color,
      required final String currencyCode,
      required final int orderNumber,
      required final bool includeInBalance,
      required final AccountType accountType,
      final CreditDetails? creditDetails,
      final SplitDetails? splitDetails}) = _$AccountImpl;
  _Account._() : super._();

  factory _Account.fromJson(Map<String, dynamic> json) = _$AccountImpl.fromJson;

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
  String get currencyCode;
  @override
  int get orderNumber;
  @override
  bool get includeInBalance;
  @override
  AccountType get accountType;
  @override
  CreditDetails? get creditDetails;
  @override
  SplitDetails? get splitDetails;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreditDetails _$CreditDetailsFromJson(Map<String, dynamic> json) {
  return _CreditDetails.fromJson(json);
}

/// @nodoc
mixin _$CreditDetails {
  double get limit => throw _privateConstructorUsedError;
  int get billingDate => throw _privateConstructorUsedError;
  int get gracePeriodInDays => throw _privateConstructorUsedError;

  /// Serializes this CreditDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreditDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreditDetailsCopyWith<CreditDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditDetailsCopyWith<$Res> {
  factory $CreditDetailsCopyWith(
          CreditDetails value, $Res Function(CreditDetails) then) =
      _$CreditDetailsCopyWithImpl<$Res, CreditDetails>;
  @useResult
  $Res call({double limit, int billingDate, int gracePeriodInDays});
}

/// @nodoc
class _$CreditDetailsCopyWithImpl<$Res, $Val extends CreditDetails>
    implements $CreditDetailsCopyWith<$Res> {
  _$CreditDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreditDetails
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$CreditDetailsImplCopyWith<$Res>
    implements $CreditDetailsCopyWith<$Res> {
  factory _$$CreditDetailsImplCopyWith(
          _$CreditDetailsImpl value, $Res Function(_$CreditDetailsImpl) then) =
      __$$CreditDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double limit, int billingDate, int gracePeriodInDays});
}

/// @nodoc
class __$$CreditDetailsImplCopyWithImpl<$Res>
    extends _$CreditDetailsCopyWithImpl<$Res, _$CreditDetailsImpl>
    implements _$$CreditDetailsImplCopyWith<$Res> {
  __$$CreditDetailsImplCopyWithImpl(
      _$CreditDetailsImpl _value, $Res Function(_$CreditDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreditDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? billingDate = null,
    Object? gracePeriodInDays = null,
  }) {
    return _then(_$CreditDetailsImpl(
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
class _$CreditDetailsImpl implements _CreditDetails {
  _$CreditDetailsImpl(
      {required this.limit,
      required this.billingDate,
      required this.gracePeriodInDays});

  factory _$CreditDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditDetailsImplFromJson(json);

  @override
  final double limit;
  @override
  final int billingDate;
  @override
  final int gracePeriodInDays;

  @override
  String toString() {
    return 'CreditDetails(limit: $limit, billingDate: $billingDate, gracePeriodInDays: $gracePeriodInDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditDetailsImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.billingDate, billingDate) ||
                other.billingDate == billingDate) &&
            (identical(other.gracePeriodInDays, gracePeriodInDays) ||
                other.gracePeriodInDays == gracePeriodInDays));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, limit, billingDate, gracePeriodInDays);

  /// Create a copy of CreditDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditDetailsImplCopyWith<_$CreditDetailsImpl> get copyWith =>
      __$$CreditDetailsImplCopyWithImpl<_$CreditDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditDetailsImplToJson(
      this,
    );
  }
}

abstract class _CreditDetails implements CreditDetails {
  factory _CreditDetails(
      {required final double limit,
      required final int billingDate,
      required final int gracePeriodInDays}) = _$CreditDetailsImpl;

  factory _CreditDetails.fromJson(Map<String, dynamic> json) =
      _$CreditDetailsImpl.fromJson;

  @override
  double get limit;
  @override
  int get billingDate;
  @override
  int get gracePeriodInDays;

  /// Create a copy of CreditDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreditDetailsImplCopyWith<_$CreditDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SplitDetails _$SplitDetailsFromJson(Map<String, dynamic> json) {
  return _SplitDetails.fromJson(json);
}

/// @nodoc
mixin _$SplitDetails {
  int get splitInto => throw _privateConstructorUsedError;

  /// Serializes this SplitDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SplitDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SplitDetailsCopyWith<SplitDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplitDetailsCopyWith<$Res> {
  factory $SplitDetailsCopyWith(
          SplitDetails value, $Res Function(SplitDetails) then) =
      _$SplitDetailsCopyWithImpl<$Res, SplitDetails>;
  @useResult
  $Res call({int splitInto});
}

/// @nodoc
class _$SplitDetailsCopyWithImpl<$Res, $Val extends SplitDetails>
    implements $SplitDetailsCopyWith<$Res> {
  _$SplitDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SplitDetails
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$SplitDetailsImplCopyWith<$Res>
    implements $SplitDetailsCopyWith<$Res> {
  factory _$$SplitDetailsImplCopyWith(
          _$SplitDetailsImpl value, $Res Function(_$SplitDetailsImpl) then) =
      __$$SplitDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int splitInto});
}

/// @nodoc
class __$$SplitDetailsImplCopyWithImpl<$Res>
    extends _$SplitDetailsCopyWithImpl<$Res, _$SplitDetailsImpl>
    implements _$$SplitDetailsImplCopyWith<$Res> {
  __$$SplitDetailsImplCopyWithImpl(
      _$SplitDetailsImpl _value, $Res Function(_$SplitDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplitDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? splitInto = null,
  }) {
    return _then(_$SplitDetailsImpl(
      splitInto: null == splitInto
          ? _value.splitInto
          : splitInto // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SplitDetailsImpl implements _SplitDetails {
  _$SplitDetailsImpl({required this.splitInto})
      : assert(splitInto != null && splitInto > 0);

  factory _$SplitDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SplitDetailsImplFromJson(json);

  @override
  final int splitInto;

  @override
  String toString() {
    return 'SplitDetails(splitInto: $splitInto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplitDetailsImpl &&
            (identical(other.splitInto, splitInto) ||
                other.splitInto == splitInto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, splitInto);

  /// Create a copy of SplitDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SplitDetailsImplCopyWith<_$SplitDetailsImpl> get copyWith =>
      __$$SplitDetailsImplCopyWithImpl<_$SplitDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SplitDetailsImplToJson(
      this,
    );
  }
}

abstract class _SplitDetails implements SplitDetails {
  factory _SplitDetails({required final int splitInto}) = _$SplitDetailsImpl;

  factory _SplitDetails.fromJson(Map<String, dynamic> json) =
      _$SplitDetailsImpl.fromJson;

  @override
  int get splitInto;

  /// Create a copy of SplitDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SplitDetailsImplCopyWith<_$SplitDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
