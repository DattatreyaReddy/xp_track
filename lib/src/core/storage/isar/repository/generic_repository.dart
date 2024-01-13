import 'package:isar/isar.dart';

import '../domain/generic_id_abstract_entity.dart';
import '../domain/page_request.dart';
import '../dto/page_result.dart';
import '../utils/generic_extensions.dart';
import '../utils/isar_extensions.dart';

abstract class GenericRepository<T extends GenericIdAbstractEntity> {
  final IsarCollection<T> isarCollection;

  GenericRepository(Isar isar) : isarCollection = isar.collection<T>();

  Future<List<T>> getAll() async =>
      await isarCollection.filter().isDeletedEqualTo(false).findAll();

  Future<T> save(T entity) async {
    entity.lastModified = DateTime.now();
    if (entity.id == Isar.autoIncrement) {
      entity.dateCreated = DateTime.now();
    }
    final resultId = await isarCollection.put(entity);
    return (await isarCollection.get(resultId))!;
  }

  Future<bool> delete(T entity) async {
    if (entity.id == Isar.autoIncrement) {
      return false;
    }
    entity.isDeleted = true;
    entity.lastModified = DateTime.now();
    await isarCollection.put(entity);
    return true;
  }

  Future<List<T>> saveAll(List<T> entities) async {
    if (entities.isEmpty) {
      return [];
    }

    final currentTime = DateTime.now();
    for (var entity in entities) {
      entity.lastModified = currentTime;
      if (entity.id == Isar.autoIncrement) {
        entity.dateCreated = currentTime;
      }
    }
    final resultIds = await isarCollection.putAll(entities);
    return (await isarCollection.getAll(resultIds)).map((e) => e!).toList();
  }

  Future<bool> deleteAll(List<T> entities) async {
    if (entities.isEmpty) {
      return false;
    }

    final currentTime = DateTime.now();
    for (var entity in entities) {
      if (entity.id == Isar.autoIncrement) {
        return false;
      }
      entity.isDeleted = true;
      entity.lastModified = currentTime;
    }
    await isarCollection.putAll(entities);
    return true;
  }

  Future<PageResult<T>> page(PageRequest pageRequest) async {
    return isarCollection.where().page(pageRequest);
  }
}
