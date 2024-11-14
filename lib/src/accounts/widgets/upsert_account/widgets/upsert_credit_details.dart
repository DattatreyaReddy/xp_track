import 'package:flutter/material.dart';

import '../../../../common/utils/extensions/custom_extensions.dart';
import '../../../../common/widgets/number_picker/number_picker_with_label.dart';
import '../../../domain/account.dart';

class UpsertCreditDetails extends StatelessWidget {
  const UpsertCreditDetails({
    super.key,
    required this.creditDetailsDto,
    required this.onChanged,
  });
  final CreditDetails creditDetailsDto;
  final ValueChanged<CreditDetails> onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NumberPickerWithLabel(
          key: const ValueKey('billingDate'),
          label: context.l10n.billingDate,
          min: 1,
          max: 31,
          value: creditDetailsDto.billingDate,
          onChanged: (value) => onChanged(
            creditDetailsDto.copyWith(billingDate: value.toInt()),
          ),
        ),
        NumberPickerWithLabel(
          key: const ValueKey('gracePeriodInDays'),
          label: context.l10n.gracePeriodInDays,
          min: 21,
          max: 60,
          value: creditDetailsDto.gracePeriodInDays,
          onChanged: (value) => onChanged(
            creditDetailsDto.copyWith(gracePeriodInDays: value.toInt()),
          ),
        ),
      ],
    );
  }
}
