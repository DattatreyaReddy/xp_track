import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/controllers/common_controllers.dart';
import '../../core/storage/isar/repository/generic_repository.dart';
import '../domain/category.dart';

part 'category_repository.g.dart';

class CategoryRepository extends GenericRepository<Category> {
  CategoryRepository(super.isar);
}

@riverpod
CategoryRepository categoryRepository(CategoryRepositoryRef ref) {
  return CategoryRepository(ref.watch(isarClientProvider));
}
