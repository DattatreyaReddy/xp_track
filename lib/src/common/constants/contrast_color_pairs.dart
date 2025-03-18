import 'package:flutter/material.dart';

final List<int> contrastColorKeys = contrastColorPairs.keys.toList();

/// Darker Colors on left, lighter colors on right
final Map<int, int> contrastColorPairs = {
  for (final shade in [200, 100, 400, 700])
    for (final color in Colors.accents)
      color[shade]!.toARGB32():
          Color(color[shade]!.toARGB32()).toContrast.toARGB32(),
};

Color getSecondaryColor(int color) {
  final secondaryColor = contrastColorPairs[color];
  if (secondaryColor != null) {
    return Color(secondaryColor);
  } else {
    return Color(color).computeLuminance() > 0.5 ? Colors.black : Colors.white;
  }
}

extension ColorExtensions on Color {
  bool get isDarkColor => computeLuminance() <= 0.5;

  HSVColor get toHSV => HSVColor.fromColor(this);

  Color get toContrast {
    final hsv = toHSV;
    if (hsv.saturation >= 0.5 && hsv.value >= 0.4) {
      return isDarkColor ? toLighter : toDarker;
    } else if (hsv.saturation <= 0.5 && hsv.value >= 0.8) {
      return toDarker;
    } else if (hsv.saturation >= 0.1 && hsv.value <= 0.6) {
      return toLighter;
    } else {
      return isDarkColor ? toLighter : toDarker;
    }
  }

  Color get toLighter {
    final hsv = toHSV;
    return HSVColor.fromAHSV(hsv.alpha, hsv.hue, 0.3, 1).toColor();
  }

  Color get toDarker {
    final hsv = toHSV;
    return HSVColor.fromAHSV(hsv.alpha, hsv.hue, 0.6, 0.5).toColor();
  }
}
