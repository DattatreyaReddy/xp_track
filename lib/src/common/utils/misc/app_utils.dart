import 'package:flutter/material.dart';
import 'package:tekartik_app_flutter_sembast/setup/sembast_flutter.dart';

import '../extensions/custom_extensions.dart';
import 'custom_types.dart';

abstract class AppUtils {
  static Widget wrapWidgetIf({
    bool? condition,
    Widget Function(Widget)? wrap,
    Widget Function(Widget)? elseWrap,
    required Widget child,
  }) {
    if (wrap != null && condition.ifNull()) {
      return wrap(child);
    }
    return elseWrap?.call(child) ?? child;
  }

  static Widget wrapChildrenIf({
    bool? condition,
    required Widget Function(List<Widget>) wrap,
    required Widget Function(List<Widget>) elseWrap,
    required List<Widget> children,
  }) {
    if (condition.ifNull()) {
      return wrap(children);
    } else {
      return elseWrap(children);
    }
  }

  static T? returnIf<T>(
    bool? condition,
    T? value, [
    T? elseValue,
  ]) {
    if (condition.ifNull()) {
      return value;
    }
    return elseValue;
  }

  static U? onNotNull<T, U>(
    T? value,
    U Function(T) wrap,
  ) {
    if (value != null) {
      return wrap(value);
    }
    return null;
  }

// List<RecordSnapshot<int, Map<String, Object?>>
  static E? Function(RecordSnapshot<T, Map<String, Object?>>?)
      convertSnap<T, E>(E Function(JsonObject) constructor) =>
          (RecordSnapshot<T, Map<String, Object?>>? event) {
            if (event == null) return null;
            return constructor(event.value);
          };
  static E Function(RecordSnapshot<T, JsonObject>) convertSnapNonNull<T, E>(
          E Function(JsonObject) constructor) =>
      (event) => constructor(event.value);

  static List<E> Function(List<RecordSnapshot<T, JsonObject>>)
      convertSnaps<T, E>(E Function(JsonObject) constructor) =>
          (event) => event.map(convertSnapNonNull(constructor)).toList();

  static T? Function(JsonObject? value) convertGet<T>(
          T Function(JsonObject) fromJson) =>
      (value) => value != null ? fromJson(value) : null;
}
