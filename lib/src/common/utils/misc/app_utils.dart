import 'dart:math';

import 'package:flutter/material.dart';

import '../extensions/custom_extensions.dart';

abstract class AppUtils {
  static String? getPanFromGst(String gst) {
    return gst.isBlank || gst.length < 10
        ? null
        : gst.substring(2, min(12, gst.length)).toUpperCase();
  }

  static Widget wrapIf({
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

  static T? returnIf<T>(
    bool? condition,
    T value, [
    T? elseValue,
  ]) {
    if (condition.ifNull()) {
      return value;
    }
    return null;
  }
}