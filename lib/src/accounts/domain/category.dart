import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/abstracts/generic_entity.dart';
import '../../common/constants/db_keys.dart';
import '../../common/utils/misc/epoch_date_time_converter.dart';
import '../dto/icon_and_color_converters.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
@JsonSerializable(createToJson: true)
class Category
    with _$Category, IconAndColorConverters
    implements GenericEntity {
  @override
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
  final bool includeInBalance;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  factory Category.empty() => Category(
        dateCreated: kDbTimeHolder,
        lastModified: kDbTimeHolder,
        name: '',
        icon: Icons.shopping_cart.codePoint,
        color: Colors.blueAccent.toARGB32(),
        includeInBalance: true,
      );

  Category({
    this.id = kDbKeyHolder,
    required this.dateCreated,
    required this.lastModified,
    required this.name,
    required this.icon,
    required this.color,
    required this.includeInBalance,
  });

  @override
  Map<String, Object?> toJson() => _$CategoryToJson(this);
}
