// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      id: json['id'] as String? ?? kDbKeyHolder,
      dateCreated: const EpochDateTimeConverter()
          .fromJson((json['dateCreated'] as num).toInt()),
      lastModified: const EpochDateTimeConverter()
          .fromJson((json['lastModified'] as num).toInt()),
      name: json['name'] as String,
      icon: (json['icon'] as num).toInt(),
      color: (json['color'] as num).toInt(),
      currencyCode: json['currencyCode'] as String,
      orderNumber: (json['orderNumber'] as num).toInt(),
      includeInBalance: json['includeInBalance'] as bool,
      accountType: $enumDecode(_$AccountTypeEnumMap, json['accountType']),
      creditDetails: json['creditDetails'] == null
          ? null
          : CreditDetails.fromJson(
              json['creditDetails'] as Map<String, dynamic>),
      splitDetails: json['splitDetails'] == null
          ? null
          : SplitDetails.fromJson(json['splitDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateCreated':
          const EpochDateTimeConverter().toJson(instance.dateCreated),
      'lastModified':
          const EpochDateTimeConverter().toJson(instance.lastModified),
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

_$CreditDetailsImpl _$$CreditDetailsImplFromJson(Map<String, dynamic> json) =>
    _$CreditDetailsImpl(
      limit: (json['limit'] as num).toDouble(),
      billingDate: (json['billingDate'] as num).toInt(),
      gracePeriodInDays: (json['gracePeriodInDays'] as num).toInt(),
    );

Map<String, dynamic> _$$CreditDetailsImplToJson(_$CreditDetailsImpl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'billingDate': instance.billingDate,
      'gracePeriodInDays': instance.gracePeriodInDays,
    };

_$SplitDetailsImpl _$$SplitDetailsImplFromJson(Map<String, dynamic> json) =>
    _$SplitDetailsImpl(
      splitInto: (json['splitInto'] as num).toInt(),
    );

Map<String, dynamic> _$$SplitDetailsImplToJson(_$SplitDetailsImpl instance) =>
    <String, dynamic>{
      'splitInto': instance.splitInto,
    };
