// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountDto _$AccountDtoFromJson(Map<String, dynamic> json) {
  return _AccountDto.fromJson(json);
}

/// @nodoc
mixin _$AccountDto {
  int? get accountId => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  DateTime? get dateCreated => throw _privateConstructorUsedError;
  DateTime? get lastModified => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get icon => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  int get orderNumber => throw _privateConstructorUsedError;
  bool get includeInBalance => throw _privateConstructorUsedError;
  AccountType get accountType => throw _privateConstructorUsedError;
  CreditDetailsDto? get creditDetails => throw _privateConstructorUsedError;
  SplitDetailsDto? get splitDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountDtoCopyWith<AccountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDtoCopyWith<$Res> {
  factory $AccountDtoCopyWith(
          AccountDto value, $Res Function(AccountDto) then) =
      _$AccountDtoCopyWithImpl<$Res, AccountDto>;
  @useResult
  $Res call(
      {int? accountId,
      bool? isDeleted,
      DateTime? dateCreated,
      DateTime? lastModified,
      String name,
      int icon,
      int color,
      String currencyCode,
      int orderNumber,
      bool includeInBalance,
      AccountType accountType,
      CreditDetailsDto? creditDetails,
      SplitDetailsDto? splitDetails});

  $CreditDetailsDtoCopyWith<$Res>? get creditDetails;
  $SplitDetailsDtoCopyWith<$Res>? get splitDetails;
}

/// @nodoc
class _$AccountDtoCopyWithImpl<$Res, $Val extends AccountDto>
    implements $AccountDtoCopyWith<$Res> {
  _$AccountDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? isDeleted = freezed,
    Object? dateCreated = freezed,
    Object? lastModified = freezed,
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
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
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
              as CreditDetailsDto?,
      splitDetails: freezed == splitDetails
          ? _value.splitDetails
          : splitDetails // ignore: cast_nullable_to_non_nullable
              as SplitDetailsDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreditDetailsDtoCopyWith<$Res>? get creditDetails {
    if (_value.creditDetails == null) {
      return null;
    }

    return $CreditDetailsDtoCopyWith<$Res>(_value.creditDetails!, (value) {
      return _then(_value.copyWith(creditDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SplitDetailsDtoCopyWith<$Res>? get splitDetails {
    if (_value.splitDetails == null) {
      return null;
    }

    return $SplitDetailsDtoCopyWith<$Res>(_value.splitDetails!, (value) {
      return _then(_value.copyWith(splitDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountDtoImplCopyWith<$Res>
    implements $AccountDtoCopyWith<$Res> {
  factory _$$AccountDtoImplCopyWith(
          _$AccountDtoImpl value, $Res Function(_$AccountDtoImpl) then) =
      __$$AccountDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? accountId,
      bool? isDeleted,
      DateTime? dateCreated,
      DateTime? lastModified,
      String name,
      int icon,
      int color,
      String currencyCode,
      int orderNumber,
      bool includeInBalance,
      AccountType accountType,
      CreditDetailsDto? creditDetails,
      SplitDetailsDto? splitDetails});

  @override
  $CreditDetailsDtoCopyWith<$Res>? get creditDetails;
  @override
  $SplitDetailsDtoCopyWith<$Res>? get splitDetails;
}

/// @nodoc
class __$$AccountDtoImplCopyWithImpl<$Res>
    extends _$AccountDtoCopyWithImpl<$Res, _$AccountDtoImpl>
    implements _$$AccountDtoImplCopyWith<$Res> {
  __$$AccountDtoImplCopyWithImpl(
      _$AccountDtoImpl _value, $Res Function(_$AccountDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? isDeleted = freezed,
    Object? dateCreated = freezed,
    Object? lastModified = freezed,
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
    return _then(_$AccountDtoImpl(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
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
              as CreditDetailsDto?,
      splitDetails: freezed == splitDetails
          ? _value.splitDetails
          : splitDetails // ignore: cast_nullable_to_non_nullable
              as SplitDetailsDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountDtoImpl extends _AccountDto {
  _$AccountDtoImpl(
      {this.accountId,
      this.isDeleted,
      this.dateCreated,
      this.lastModified,
      required this.name,
      required this.icon,
      required this.color,
      required this.currencyCode,
      required this.orderNumber,
      required this.includeInBalance,
      required this.accountType,
      this.creditDetails,
      this.splitDetails})
      : super._();

  factory _$AccountDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDtoImplFromJson(json);

  @override
  final int? accountId;
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
  final String currencyCode;
  @override
  final int orderNumber;
  @override
  final bool includeInBalance;
  @override
  final AccountType accountType;
  @override
  final CreditDetailsDto? creditDetails;
  @override
  final SplitDetailsDto? splitDetails;

  @override
  String toString() {
    return 'AccountDto(accountId: $accountId, isDeleted: $isDeleted, dateCreated: $dateCreated, lastModified: $lastModified, name: $name, icon: $icon, color: $color, currencyCode: $currencyCode, orderNumber: $orderNumber, includeInBalance: $includeInBalance, accountType: $accountType, creditDetails: $creditDetails, splitDetails: $splitDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDtoImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accountId,
      isDeleted,
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDtoImplCopyWith<_$AccountDtoImpl> get copyWith =>
      __$$AccountDtoImplCopyWithImpl<_$AccountDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDtoImplToJson(
      this,
    );
  }
}

abstract class _AccountDto extends AccountDto {
  factory _AccountDto(
      {final int? accountId,
      final bool? isDeleted,
      final DateTime? dateCreated,
      final DateTime? lastModified,
      required final String name,
      required final int icon,
      required final int color,
      required final String currencyCode,
      required final int orderNumber,
      required final bool includeInBalance,
      required final AccountType accountType,
      final CreditDetailsDto? creditDetails,
      final SplitDetailsDto? splitDetails}) = _$AccountDtoImpl;
  _AccountDto._() : super._();

  factory _AccountDto.fromJson(Map<String, dynamic> json) =
      _$AccountDtoImpl.fromJson;

  @override
  int? get accountId;
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
  String get currencyCode;
  @override
  int get orderNumber;
  @override
  bool get includeInBalance;
  @override
  AccountType get accountType;
  @override
  CreditDetailsDto? get creditDetails;
  @override
  SplitDetailsDto? get splitDetails;
  @override
  @JsonKey(ignore: true)
  _$$AccountDtoImplCopyWith<_$AccountDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
