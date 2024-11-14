// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageRequestImpl _$$PageRequestImplFromJson(Map<String, dynamic> json) =>
    _$PageRequestImpl(
      page: (json['page'] as num).toInt(),
      size: (json['size'] as num).toInt(),
    );

Map<String, dynamic> _$$PageRequestImplToJson(_$PageRequestImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };
