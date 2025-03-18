// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Account {
  String get id;
  DateTime get dateCreated;
  DateTime get lastModified;
  String get name;
  int get icon;
  int get color;
  String get currencyCode;
  int get orderNumber;
  bool get includeInBalance;
  AccountType get accountType;
  CreditDetails? get creditDetails;
  SplitDetails? get splitDetails;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AccountCopyWith<Account> get copyWith =>
      _$AccountCopyWithImpl<Account>(this as Account, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Account &&
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

  @override
  String toString() {
    return 'Account(id: $id, dateCreated: $dateCreated, lastModified: $lastModified, name: $name, icon: $icon, color: $color, currencyCode: $currencyCode, orderNumber: $orderNumber, includeInBalance: $includeInBalance, accountType: $accountType, creditDetails: $creditDetails, splitDetails: $splitDetails)';
  }
}

/// @nodoc
abstract mixin class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) _then) =
      _$AccountCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      DateTime dateCreated,
      DateTime lastModified,
      String name,
      int icon,
      int color,
      String currencyCode,
      int orderNumber,
      bool includeInBalance,
      AccountType accountType,
      CreditDetails? creditDetails,
      SplitDetails? splitDetails});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res> implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._self, this._then);

  final Account _self;
  final $Res Function(Account) _then;

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
    return _then(Account(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _self.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastModified: null == lastModified
          ? _self.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      currencyCode: null == currencyCode
          ? _self.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int,
      includeInBalance: null == includeInBalance
          ? _self.includeInBalance
          : includeInBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      accountType: null == accountType
          ? _self.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as AccountType,
      creditDetails: freezed == creditDetails
          ? _self.creditDetails
          : creditDetails // ignore: cast_nullable_to_non_nullable
              as CreditDetails?,
      splitDetails: freezed == splitDetails
          ? _self.splitDetails
          : splitDetails // ignore: cast_nullable_to_non_nullable
              as SplitDetails?,
    ));
  }
}

/// @nodoc
mixin _$CreditDetails {
  double get limit;

  /// Create a copy of CreditDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreditDetailsCopyWith<CreditDetails> get copyWith =>
      _$CreditDetailsCopyWithImpl<CreditDetails>(
          this as CreditDetails, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreditDetails &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, limit);

  @override
  String toString() {
    return 'CreditDetails(limit: $limit)';
  }
}

/// @nodoc
abstract mixin class $CreditDetailsCopyWith<$Res> {
  factory $CreditDetailsCopyWith(
          CreditDetails value, $Res Function(CreditDetails) _then) =
      _$CreditDetailsCopyWithImpl;
  @useResult
  $Res call({double limit});
}

/// @nodoc
class _$CreditDetailsCopyWithImpl<$Res>
    implements $CreditDetailsCopyWith<$Res> {
  _$CreditDetailsCopyWithImpl(this._self, this._then);

  final CreditDetails _self;
  final $Res Function(CreditDetails) _then;

  /// Create a copy of CreditDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
  }) {
    return _then(CreditDetails(
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$SplitDetails {
  int get splitInto;

  /// Create a copy of SplitDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SplitDetailsCopyWith<SplitDetails> get copyWith =>
      _$SplitDetailsCopyWithImpl<SplitDetails>(
          this as SplitDetails, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SplitDetails &&
            (identical(other.splitInto, splitInto) ||
                other.splitInto == splitInto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, splitInto);

  @override
  String toString() {
    return 'SplitDetails(splitInto: $splitInto)';
  }
}

/// @nodoc
abstract mixin class $SplitDetailsCopyWith<$Res> {
  factory $SplitDetailsCopyWith(
          SplitDetails value, $Res Function(SplitDetails) _then) =
      _$SplitDetailsCopyWithImpl;
  @useResult
  $Res call({int splitInto});
}

/// @nodoc
class _$SplitDetailsCopyWithImpl<$Res> implements $SplitDetailsCopyWith<$Res> {
  _$SplitDetailsCopyWithImpl(this._self, this._then);

  final SplitDetails _self;
  final $Res Function(SplitDetails) _then;

  /// Create a copy of SplitDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? splitInto = null,
  }) {
    return _then(SplitDetails(
      splitInto: null == splitInto
          ? _self.splitInto
          : splitInto // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
