import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'name')
enum DBKey {
  themeMode('THEME_MODE', ThemeMode.system),
  locale('LOCALE', null),
  currency('CURRENCY', null),
  isSetupCompleted('IS_SETUP_COMPLETED', false),
  isSetupStarted('IS_SETUP_STARTED', false),
  userName('USER_NAME', null),
  selectedLocale('SELECTED_LOCALE', null),
  isDebugMode('IS_DEBUG_MODE', false),
  ;

  const DBKey(this._name, this.initial);

  final dynamic initial;
  final String _name;

  String get name => _name;
}

const String kDbKeyHolder = "holder";

final DateTime kDbTimeHolder = DateTime.fromMillisecondsSinceEpoch(0);
