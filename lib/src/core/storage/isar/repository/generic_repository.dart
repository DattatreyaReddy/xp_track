import 'package:isar/isar.dart';

import '../domain/generic_id_abstract_entity.dart';
import '../domain/page_request.dart';
import '../dto/page_result.dart';
import '../utils/generic_extensions.dart';
import '../utils/isar_extensions.dart';

abstract class GenericRepository<T extends GenericIdAbstractEntity> {
  final IsarCollection<T> _isarCollection;
  final Isar isar;

  GenericRepository(this.isar) : _isarCollection = isar.collection<T>();

  Future<int> getCount({bool includeDeleted = false}) async {
    if (includeDeleted) {
      return await _isarCollection.count();
    }
    return await _isarCollection.filter().isDeletedEqualTo(false).count();
  }

  Future<List<T>> getAll() async =>
      await _isarCollection.filter().isDeletedEqualTo(false).findAll();

  Stream<List<T>> watchAll() => _isarCollection
      .filter()
      .isDeletedEqualTo(false)
      .watch(fireImmediately: true);

  Future<T> save(T entity) async {
    entity.lastModified = DateTime.now();
    if (entity.id == Isar.autoIncrement) {
      entity.dateCreated = DateTime.now();
    }
    final resultId = await isar.writeTxn(() => _isarCollection.put(entity));
    return (await _isarCollection.get(resultId))!;
  }

  Future<bool> delete(T entity) async => deleteById(entity.id);

  Future<bool> deleteById(int? id) async {
    if (id == null || id == Isar.autoIncrement) {
      return false;
    }
    final entity = await _isarCollection.get(id);
    if (entity == null) {
      return false;
    }
    entity.isDeleted = true;
    entity.lastModified = DateTime.now();
    await isar.writeTxn(() => _isarCollection.put(entity));
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
    final resultIds =
        await isar.writeTxn(() => _isarCollection.putAll(entities));
    return (await _isarCollection.getAll(resultIds)).map((e) => e!).toList();
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

    await isar.writeTxn(() => _isarCollection.putAll(entities));
    return true;
  }

  Future<PageResult<T>> page(PageRequest pageRequest) async {
    return _isarCollection.where().page(pageRequest);
  }
}
