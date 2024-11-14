// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryDtoImpl _$$CategoryDtoImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDtoImpl(
      categoryId: (json['categoryId'] as num?)?.toInt(),
      isDeleted: json['isDeleted'] as bool?,
      dateCreated: json['dateCreated'] == null
          ? null
          : DateTime.parse(json['dateCreated'] as String),
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      name: json['name'] as String,
      icon: (json['icon'] as num).toInt(),
      color: (json['color'] as num).toInt(),
      includeInBalance: json['includeInBalance'] as bool,
    );

Map<String, dynamic> _$$CategoryDtoImplToJson(_$CategoryDtoImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'isDeleted': instance.isDeleted,
      'dateCreated': instance.dateCreated?.toIso8601String(),
      'lastModified': instance.lastModified?.toIso8601String(),
      'name': instance.name,
      'icon': instance.icon,
      'color': instance.color,
      'includeInBalance': instance.includeInBalance,
    };
