part of '../custom_extensions.dart';

extension MapExtensions<K, V> on Map<K, V> {
  Map<K, V> get filterOutNulls {
    final Map<K, V> filtered = <K, V>{};
    forEach((K key, V value) {
      if (value != null) filtered[key] = value;
    });
    return filtered;
  }

  Map<K, V> toggleKey(K key, V value) {
    if (containsKey(key)) {
      return {...this}..remove(key);
    } else {
      return {...this, key: value};
    }
  }

  String toSeparatedString({
    String separator = " | ",
    String keyValueSeparator = " : ",
  }) {
    return entries.filterNulls
        .map((e) => "${e.key}$keyValueSeparator${e.value}")
        .join(separator);
  }
}

extension NullableMapExtensions<K, V> on Map<K, V>? {
  bool get isNull => this == null;

  bool get isBlank => isNull || this!.isEmpty;

  bool get isNotBlank => !isBlank;

  bool get isSingletonList => isNotBlank && this!.length == 1;
}
