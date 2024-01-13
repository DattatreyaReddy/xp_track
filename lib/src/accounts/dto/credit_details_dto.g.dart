// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreditDetailsDtoImpl _$$CreditDetailsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreditDetailsDtoImpl(
      limit: (json['limit'] as num).toDouble(),
      billingCycleInDays: json['billingCycleInDays'] as int,
      startDate: DateTime.parse(json['startDate'] as String),
      gracePeriodInDays: json['gracePeriodInDays'] as int,
    );

Map<String, dynamic> _$$CreditDetailsDtoImplToJson(
        _$CreditDetailsDtoImpl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'billingCycleInDays': instance.billingCycleInDays,
      'startDate': instance.startDate.toIso8601String(),
      'gracePeriodInDays': instance.gracePeriodInDays,
    };
