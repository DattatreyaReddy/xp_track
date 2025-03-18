import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_info_dto.freezed.dart';

// "code": "UAH",
// "name": "Ukraine Hryvnia",
// "symbol": "₴",
@freezed
class CurrencyInfoDto with _$CurrencyInfoDto {
  @override
  final String code;
  @override
  final String name;
  @override
  final String symbol;

  CurrencyInfoDto({
    required this.code,
    required this.name,
    required this.symbol,
  });

  String get toCurrencyString => '$name($symbol)';
}
