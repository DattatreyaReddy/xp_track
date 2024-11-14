// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: json['id'] as String? ?? kDbKeyHolder,
      dateCreated: const EpochDateTimeConverter()
          .fromJson((json['dateCreated'] as num).toInt()),
      lastModified: const EpochDateTimeConverter()
          .fromJson((json['lastModified'] as num).toInt()),
      name: json['name'] as String,
      icon: (json['icon'] as num).toInt(),
      color: (json['color'] as num).toInt(),
      includeInBalance: json['includeInBalance'] as bool,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateCreated':
          const EpochDateTimeConverter().toJson(instance.dateCreated),
      'lastModified':
          const EpochDateTimeConverter().toJson(instance.lastModified),
      'name': instance.name,
      'icon': instance.icon,
      'color': instance.color,
      'includeInBalance': instance.includeInBalance,
    };
