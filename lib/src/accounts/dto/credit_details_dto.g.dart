// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreditDetailsDtoImpl _$$CreditDetailsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreditDetailsDtoImpl(
      limit: (json['limit'] as num).toDouble(),
      billingDate: (json['billingDate'] as num).toInt(),
      gracePeriodInDays: (json['gracePeriodInDays'] as num).toInt(),
    );

Map<String, dynamic> _$$CreditDetailsDtoImplToJson(
        _$CreditDetailsDtoImpl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'billingDate': instance.billingDate,
      'gracePeriodInDays': instance.gracePeriodInDays,
    };
