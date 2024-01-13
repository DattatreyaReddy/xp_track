import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_info_dto.freezed.dart';

// "code": "UAH",
// "name": "Ukraine Hryvnia",
// "symbol": "₴",
@freezed
class CurrencyInfoDto with _$CurrencyInfoDto {
  const CurrencyInfoDto._();
  factory CurrencyInfoDto({
    required String code,
    required String name,
    required String symbol,
  }) = _CurrencyInfoDto;

  String get toCurrencyString => '$name($symbol)';
}
