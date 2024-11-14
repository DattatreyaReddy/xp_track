import 'json_abstract.dart';

abstract class GenericEntity extends JsonAbstract {
  String get id;
  DateTime get dateCreated;
  DateTime get lastModified;
}

enum GenericEntityFields {
  id,
  dateCreated,
  lastModified,
}
