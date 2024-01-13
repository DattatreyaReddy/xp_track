import 'package:flutter/material.dart';

import '../dto/page_filter_option/page_filter_option.dart';
import '../enums/filter_data_type.dart';
import '../enums/filter_type.dart';
import 'locale_enum.dart';
import 'value_enum.dart';

abstract interface class FilterEnum implements LocaleEnum {
  FilterEnum(this.value, this.type, this.dataType);

  @override
  final String value;

  final FilterType type;

  final FilterDataType dataType;

  @override
  String toLocale(BuildContext context);

  static bool optionsTypeCheck<T extends FilterEnum>(
    T enumValue,
    List<PageFilterOption<T, dynamic>> options,
  ) {
    if (options.isEmpty) return false;
    final valueOption = options.firstOrNull?.value;
    final value = switch (enumValue.type) {
      FilterType.singleValued => valueOption,
      FilterType.multiValued =>
        valueOption is Iterable ? valueOption.firstOrNull : valueOption,
      FilterType.range =>
        valueOption is RangeValue ? valueOption.startTime : valueOption,
    };

    return switch (enumValue.dataType) {
      FilterDataType.string => value is String,
      FilterDataType.date => value is DateTime,
      FilterDataType.enumValue => value is ValueEnum,
      FilterDataType.boolean => value is bool,
      FilterDataType.doubleValue => value is double || value is int,
      FilterDataType.integer => value is int,
    };
  }

  static bool selectedTypeCheck(
    FilterEnum enumValue,
    dynamic selected,
  ) {
    final value = switch (enumValue.type) {
      FilterType.singleValued => selected,
      FilterType.multiValued =>
        selected is Iterable ? selected.firstOrNull : null,
      FilterType.range => selected is RangeValue ? selected.startTime : null,
    };

    if (value == null) return false;

    return switch (enumValue.dataType) {
      FilterDataType.string => value is String,
      FilterDataType.date => value is DateTime,
      FilterDataType.enumValue => value is ValueEnum,
      FilterDataType.boolean => value is bool,
      FilterDataType.doubleValue => value is double || value is int,
      FilterDataType.integer => value is int,
    };
  }
}
