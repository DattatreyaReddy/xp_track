import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/account.dart';

part 'credit_details_dto.freezed.dart';
part 'credit_details_dto.g.dart';

@freezed
class CreditDetailsDto with _$CreditDetailsDto {
  CreditDetailsDto._();
  factory CreditDetailsDto({
    required double limit,
    required int billingDate,
    required int gracePeriodInDays,
  }) = _CreditDetailsDto;

  factory CreditDetailsDto.empty() => CreditDetailsDto(
        limit: 1000,
        billingDate: 15,
        gracePeriodInDays: 21,
      );

  factory CreditDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$CreditDetailsDtoFromJson(json);

  factory CreditDetailsDto.fromDomain(CreditDetails creditDetails) =>
      CreditDetailsDto(
        limit: creditDetails.limit!,
        billingDate: creditDetails.billingDate!,
        gracePeriodInDays: creditDetails.gracePeriodInDays!,
      );

  CreditDetails get toDomain => CreditDetails(
        limit: limit,
        billingDate: billingDate,
        gracePeriodInDays: gracePeriodInDays,
      );
}
