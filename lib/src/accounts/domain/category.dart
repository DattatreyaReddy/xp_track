import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/abstracts/generic_entity.dart';
import '../../common/constants/db_keys.dart';
import '../../common/utils/misc/epoch_date_time_converter.dart';
import '../dto/icon_and_color_converters.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category
    with _$Category, IconAndColorConverters
    implements GenericEntity {
  Category._();
  factory Category({
    @Default(kDbKeyHolder) String id,
    @EpochDateTimeConverter() required DateTime dateCreated,
    @EpochDateTimeConverter() required DateTime lastModified,
    required String name,
    required int icon,
    required int color,
    required bool includeInBalance,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  factory Category.empty() => Category(
        dateCreated: kDbTimeHolder,
        lastModified: kDbTimeHolder,
        name: '',
        icon: Icons.shopping_cart.codePoint,
        color: Colors.blueAccent.value,
        includeInBalance: true,
      );
}
