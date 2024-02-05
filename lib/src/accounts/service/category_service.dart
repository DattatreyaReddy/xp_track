import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../dto/category_dto.dart';
import '../repository/category_repository.dart';

part 'category_service.g.dart';

class CategoryService {
  final CategoryRepository _repository;

  CategoryService(this._repository);

  // Delete Category
  Future<bool> deleteCategory(int? categoryId) =>
      _repository.deleteById(categoryId);

  // Save Category
  Future<void> saveCategory(CategoryDto category) =>
      _repository.save(category.toDomain);

  // Get Categories Stream
  Stream<List<CategoryDto>> getCategoriesStream() => _repository
      .watchAll()
      .map((event) => event.map((e) => CategoryDto.fromDomain(e)).toList());
}

@riverpod
CategoryService categoryService(CategoryServiceRef ref) =>
    CategoryService(ref.watch(categoryRepositoryProvider));
