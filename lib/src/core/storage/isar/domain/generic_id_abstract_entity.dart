import 'package:isar/isar.dart';

abstract class GenericIdAbstractEntity {
  Id id;

  DateTime? dateCreated;

  DateTime? lastModified;

  @Index()
  bool isDeleted;

  GenericIdAbstractEntity({
    this.id = Isar.autoIncrement,
    this.dateCreated,
    this.lastModified,
    this.isDeleted = false,
  });
}
