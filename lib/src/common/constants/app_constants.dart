import 'package:flutter/material.dart';

abstract class AppConstants {
  AppConstants._();
  static const accountNumberCounter = "ACCOUNT_NUMBER_COUNTER";
  static const Duration errorToastDuration = Duration(seconds: 5);
  static const String githubUrl = "https://github.com/DattatreyaReddy/xp_track";
}

abstract class AppDimensions {
  static const BorderRadius cr16 = BorderRadius.all(Radius.circular(16));
  static const RoundedRectangleBorder rb16 =
      RoundedRectangleBorder(borderRadius: cr16);
}
