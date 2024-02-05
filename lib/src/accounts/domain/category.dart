import 'package:isar/isar.dart';

import '../../common/utils/extensions/custom_extensions.dart';
import '../../core/storage/isar/domain/generic_id_abstract_entity.dart';

part 'category.g.dart';

@Collection(accessor: "categories")
class Category extends GenericIdAbstractEntity {
  String name;

  int icon;

  int color;
  @Index()
  bool includeInBalance;

  Category({
    required this.name,
    required this.icon,
    required this.color,
    required this.includeInBalance,
  }) : super();

  factory Category.fromDto({
    int? id,
    bool? isDeleted = false,
    DateTime? dateCreated,
    DateTime? lastModified,
    required String name,
    required int icon,
    required int color,
    required bool includeInBalance,
  }) {
    final Category category = Category(
      name: name,
      icon: icon,
      color: color,
      includeInBalance: includeInBalance,
    );
    category.id = id ?? Isar.autoIncrement;
    category.isDeleted = isDeleted.ifNull();
    category.dateCreated = dateCreated;
    category.lastModified = lastModified;
    return category;
  }
}
