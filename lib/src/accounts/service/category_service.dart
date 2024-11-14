import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/category.dart';
import '../repository/category_repository.dart';

part 'category_service.g.dart';

class CategoryService {
  final CategoryRepository _repository;

  CategoryService(this._repository);

  // Delete Category
  Future<bool> deleteCategory(String categoryId) =>
      _repository.deleteById(categoryId);

  // Save Category
  Future<void> saveCategory(Category category) => _repository.save(category);

  // Get Categories Stream
  Stream<List<Category>> getCategoriesStream() => _repository.getAll();
}

@riverpod
CategoryService categoryService(Ref ref) =>
    CategoryService(ref.watch(categoryRepositoryProvider));
