import 'package:flutter/material.dart';

import '../../common/constants/contrast_color_pairs.dart';

mixin IconAndColorConverters {
  int get icon;
  int get color;

  Color get primaryColor => Color(color);

  Color get secondaryColor => getSecondaryColor(color);

  Color get onPrimaryColor =>
      primaryColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;

  IconData get iconValue => IconData(icon, fontFamily: 'MaterialIcons');
}
