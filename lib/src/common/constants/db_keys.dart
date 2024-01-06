import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'name')
enum DBKey {
  themeMode('THEME_MODE', ThemeMode.system),
  locale('LOCALE', null),
  currency('CURRENCY', null),
  isSetupCompleted('IS_SETUP_COMPLETED', false),
  ;

  const DBKey(this._name, this.initial);

  final dynamic initial;
  final String _name;

  String get name => _name;
}
