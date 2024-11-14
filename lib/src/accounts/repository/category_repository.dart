import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tekartik_app_flutter_sembast/setup/sembast_flutter.dart';

import '../../common/controllers/common_controllers.dart';
import '../../core/storage/isar/repository/generic_repository.dart';
import '../domain/category.dart';

part 'category_repository.g.dart';

class CategoryRepository extends GenericRepository<Category> {
  CategoryRepository(Database db) : super(db, "Category", Category.fromJson);
}

@riverpod
CategoryRepository categoryRepository(Ref ref) {
  return CategoryRepository(ref.watch(dbProvider));
}
