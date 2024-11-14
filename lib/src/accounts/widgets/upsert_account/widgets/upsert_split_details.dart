import 'package:flutter/material.dart';

import '../../../../common/utils/extensions/custom_extensions.dart';
import '../../../../common/widgets/number_picker/number_picker_with_label.dart';
import '../../../domain/account.dart';

class UpsertSplitDetails extends StatelessWidget {
  const UpsertSplitDetails({
    super.key,
    required this.splitDetailsDto,
    required this.onChanged,
  });

  final SplitDetails splitDetailsDto;
  final ValueChanged<SplitDetails> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NumberPickerWithLabel(
          label: context.l10n.defaultSplitInto,
          min: 1,
          max: 9,
          value: splitDetailsDto.splitInto,
          onChanged: (value) =>
              onChanged(splitDetailsDto.copyWith(splitInto: value.toInt())),
        ),
      ],
    );
  }
}
