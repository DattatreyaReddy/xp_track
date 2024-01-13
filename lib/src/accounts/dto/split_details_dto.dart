import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/account.dart';

part 'split_details_dto.freezed.dart';
part 'split_details_dto.g.dart';

@freezed
class SplitDetailsDto with _$SplitDetailsDto {
  factory SplitDetailsDto({
    required int splitInto,
  }) = _SplitDetailsDto;

  factory SplitDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$SplitDetailsDtoFromJson(json);

  factory SplitDetailsDto.fromDomain(SplitDetails splitDetails) =>
      SplitDetailsDto(splitInto: splitDetails.splitInto!);
}
