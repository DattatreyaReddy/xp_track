import 'package:flutter/material.dart';

import '../../../../common/constants/contrast_color_pairs.dart';
import '../../../widgets/xp_circular_avatar.dart';

class AccountColorSelection extends StatelessWidget {
  const AccountColorSelection({
    super.key,
    this.height = 60,
    required this.selectedColor,
    required this.onChanged,
  });
  final double height;
  final int selectedColor;
  final ValueSetter<int> onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      height: height,
      child: ListView.builder(
        itemCount: contrastColorKeys.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final primaryColor = contrastColorKeys[index];
          final secondaryColor =
              contrastColorPairs[primaryColor] ?? primaryColor;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: XpCircularAvatar(
              tapOnFocus: true,
              value: primaryColor,
              isSelected: selectedColor == primaryColor,
              primaryColor: Color(primaryColor),
              secondaryColor: Color(secondaryColor),
              onTap: () => onChanged(primaryColor),
            ),
          );
        },
      ),
    );
  }
}
