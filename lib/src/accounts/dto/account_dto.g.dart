// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountDtoImpl _$$AccountDtoImplFromJson(Map<String, dynamic> json) =>
    _$AccountDtoImpl(
      name: json['name'] as String,
      icon: json['icon'] as int,
      color: json['color'] as int,
      currencyCode: json['currencyCode'] as String,
      orderNumber: json['orderNumber'] as int,
      includeInBalance: json['includeInBalance'] as bool,
      accountType: $enumDecode(_$AccountTypeEnumMap, json['accountType']),
      creditDetails: json['creditDetails'] == null
          ? null
          : CreditDetailsDto.fromJson(
              json['creditDetails'] as Map<String, dynamic>),
      splitDetails: json['splitDetails'] == null
          ? null
          : SplitDetailsDto.fromJson(
              json['splitDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountDtoImplToJson(_$AccountDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'color': instance.color,
      'currencyCode': instance.currencyCode,
      'orderNumber': instance.orderNumber,
      'includeInBalance': instance.includeInBalance,
      'accountType': _$AccountTypeEnumMap[instance.accountType]!,
      'creditDetails': instance.creditDetails?.toJson(),
      'splitDetails': instance.splitDetails?.toJson(),
    };

const _$AccountTypeEnumMap = {
  AccountType.credit: 'CREDIT',
  AccountType.debit: 'DEBIT',
  AccountType.split: 'SPLIT',
};
