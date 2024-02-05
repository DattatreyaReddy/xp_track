import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/category.dart';
import 'icon_and_color_converters.dart';

part 'category_dto.freezed.dart';
part 'category_dto.g.dart';

@freezed
class CategoryDto with _$CategoryDto, IconAndColorConverters {
  CategoryDto._();

  factory CategoryDto({
    int? categoryId,
    bool? isDeleted,
    DateTime? dateCreated,
    DateTime? lastModified,
    required String name,
    required int icon,
    required int color,
    required bool includeInBalance,
  }) = _CategoryDto;

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  factory CategoryDto.empty() => CategoryDto(
        name: '',
        icon: Icons.shopping_cart.codePoint,
        color: Colors.blueAccent.value,
        includeInBalance: true,
      );

  factory CategoryDto.fromDomain(Category category) => CategoryDto(
        categoryId: category.id,
        isDeleted: category.isDeleted,
        dateCreated: category.dateCreated,
        lastModified: category.lastModified,
        name: category.name,
        icon: category.icon,
        color: category.color,
        includeInBalance: category.includeInBalance,
      );

  Category get toDomain => Category.fromDto(
        id: categoryId,
        isDeleted: isDeleted,
        dateCreated: dateCreated,
        lastModified: lastModified,
        name: name,
        icon: icon,
        color: color,
        includeInBalance: includeInBalance,
      );
}
