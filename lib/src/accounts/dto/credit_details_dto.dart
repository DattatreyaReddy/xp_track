import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/account.dart';

part 'credit_details_dto.freezed.dart';
part 'credit_details_dto.g.dart';

@freezed
class CreditDetailsDto with _$CreditDetailsDto {
  factory CreditDetailsDto({
    required double limit,
    required int billingCycleInDays,
    required DateTime startDate,
    required int gracePeriodInDays,
  }) = _CreditDetailsDto;

  factory CreditDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$CreditDetailsDtoFromJson(json);

  factory CreditDetailsDto.fromDomain(CreditDetails creditDetails) =>
      CreditDetailsDto(
        limit: creditDetails.limit!,
        billingCycleInDays: creditDetails.billingCycleInDays!,
        startDate: creditDetails.startDate!,
        gracePeriodInDays: creditDetails.gracePeriodInDays!,
      );
}
