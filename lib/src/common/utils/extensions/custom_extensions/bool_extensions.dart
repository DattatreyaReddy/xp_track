part of '../custom_extensions.dart';

extension BoolExtensions on bool? {
  bool ifNull([bool alternative = false]) => this ?? alternative;
  int? get toInt => this != null ? (this! ? 1 : 2) : 0;
}
