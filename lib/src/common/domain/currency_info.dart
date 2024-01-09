import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_info.freezed.dart';

// "code": "UAH",
// "name": "Ukraine Hryvnia",
// "symbol": "₴",
@freezed
class CurrencyInfo with _$CurrencyInfo {
  const CurrencyInfo._();
  factory CurrencyInfo({
    required String code,
    required String name,
    required String symbol,
  }) = _CurrencyInfo;

  String get toCurrencyString => '$name($symbol)';
}
