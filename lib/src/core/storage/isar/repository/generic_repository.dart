import 'package:tekartik_app_flutter_sembast/setup/sembast_flutter.dart';

import '../../../../common/abstracts/generic_entity.dart';
import '../../../../common/utils/extensions/custom_extensions.dart';
import '../../../../common/utils/misc/app_utils.dart';
import '../../../../common/utils/misc/custom_types.dart';

abstract class GenericRepository<T extends GenericEntity> {
  final Database database;
  final StoreRef<String, JsonObject> store;
  final GenericFromJson<T> fromJson;

  GenericRepository(this.database, String _storeName, this.fromJson)
      : store = StoreRef(_storeName);

  Stream<List<T>> getAll() =>
      store.query().onSnapshots(database).map(AppUtils.convertSnaps(fromJson));

  Future<int> getCount([DatabaseClient? dbClient]) =>
      wrap(dbClient, (txn) => store.count(txn));

  Future<T?> getById(String id, [DatabaseClient? dbClient]) async {
    if (id.isDbKeyHolder) {
      return null;
    }
    return wrap(
      dbClient,
      (txn) => store.record(id).get(txn).then(AppUtils.convertGet(fromJson)),
    );
  }

  Future<void> save(T entity, [DatabaseClient? dbClient]) async {
    final int now = DateTime.now().millisecondsSinceEpoch;
    final entityObj = entity.toJson();
    entityObj[GenericEntityFields.lastModified.name] = now;
    if (entity.id.isDbKeyHolder) {
      entityObj[GenericEntityFields.dateCreated.name] = now;
    }

    return wrap(dbClient, (txn) async {
      String entityId = entity.id;
      if (entityId.isDbKeyHolder) {
        entityId = await store.generateKey(txn);
      }
      entityObj[GenericEntityFields.id.name] = entityId;
      await store.record(entityId).put(txn, entityObj);
    });
  }

  Future<void> saveAll(List<T> entities, [DatabaseClient? dbClient]) async {
    if (entities.isEmpty) return;
    return wrap(
      dbClient,
      (txn) => Future.wait([for (final entry in entities) save(entry, txn)]),
    );
  }

  Future<bool> delete(T entity, [DatabaseClient? dbClient]) =>
      deleteById(entity.id, dbClient);

  Future<bool> deleteById(String id, [DatabaseClient? dbClient]) async {
    if (id.isDbKeyHolder) {
      return true;
    }
    return await wrap(
      dbClient,
      (txn) async => (await store.record(id).delete(txn)).isNotBlank,
    );
  }

  Future<void> deleteAllById(List<String> entities,
      [DatabaseClient? dbClient]) async {
    if (entities.isEmpty) return;
    return wrap(
      dbClient,
      (txn) =>
          Future.wait([for (final entry in entities) deleteById(entry, txn)]),
    );
  }

  Future<void> deleteAll(List<T> entities, [DatabaseClient? dbClient]) async {
    if (entities.isEmpty) return;
    return wrap(
      dbClient,
      (txn) => Future.wait(
          [for (final entry in entities) deleteById(entry.id, txn)]),
    );
  }

  Future<U> wrap<U>(
    DatabaseClient? dbClient,
    Future<U> Function(DatabaseClient) call,
  ) async {
    if (dbClient == null) {
      return await database.transaction((txn) => call(txn));
    }
    return await call(dbClient);
  }
}
