part of '../custom_extensions.dart';

extension IterableExtensions<T> on Iterable<T>? {
  bool get isNull => this == null;

  bool get isBlank => isNull || this!.isEmpty;

  bool get isNotBlank => !isBlank;

  bool get isSingletonList => isNotBlank && this!.length == 1;

  T? get firstOrNull {
    if (isNull) return null;
    var iterator = this!.iterator;
    if (iterator.moveNext()) return iterator.current;
    return null;
  }

  T? firstWhereOrNull(bool Function(T element) test, {T Function()? orElse}) {
    if (isNull) return null;
    try {
      return this!.firstWhere(test, orElse: orElse);
    } catch (e) {
      return null;
    }
  }

  String get toPath => isNotBlank ? this!.join("/") : "/";

  String get toKey => isNotBlank ? this!.join("_") : "_";

  String? get joinWithSlashAndBraces {
    final newList = this?.filterNulls;
    return newList.isNotBlank ? newList!.join('/').wrap() : null;
  }
}

extension NullableIterableExtensions<T> on Iterable<T?> {
  Iterable<T> get filterNulls => where((element) => element != null).cast<T>();
}

extension ListExtensions<T> on List<T> {
  List<T> insertInBetween(T element) {
    final newList = <T>[];
    for (var i = 0; i < length; i++) {
      newList.add(this[i]);
      if (i != length - 1) {
        newList.add(element);
      }
    }
    return newList;
  }
}
