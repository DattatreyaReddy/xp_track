import 'dart:math';

import 'package:flutter/material.dart';

import '../extensions/custom_extensions.dart';

abstract class AppUtils {
  static String? getPanFromGst(String gst) {
    return gst.isBlank || gst.length < 10
        ? null
        : gst.substring(2, min(12, gst.length)).toUpperCase();
  }

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
    T value, [
    T? elseValue,
  ]) {
    if (condition.ifNull()) {
      return value;
    }
    return elseValue;
  }

  static U? wrapIfNotNull<T, U>(
    T? value,
    U Function(T) wrap,
  ) {
    if (value != null) {
      return wrap(value);
    }
    return null;
  }
}
