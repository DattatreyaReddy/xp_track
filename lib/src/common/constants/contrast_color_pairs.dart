import 'package:flutter/material.dart';

/// Darker Colors on left, lighter colors on right
const Map<int, int> contrastColorPairs = {
  0xFF8AAAE5: 0xFFFFFFFF,
  0xFF2F3C7E: 0xFFFBEAEB,
  0xFF101820: 0xFFFEE715,
  0xFFF96167: 0xFFF9E795,
  0xFF4831D4: 0xFFCCF381,
  0xFF317773: 0xFFE2D1F9,
  0xFF990011: 0xFFFCF6F5,
  0xFFFF69B4: 0xFF00FFFF,
  0xFFEE4E34: 0xFFFCEDDA,
  0xFF00008B: 0xFFADD8E6,
  0xFF89ABE3: 0xFFEA738D,
  0xFFEC449B: 0xFF99F443,
  0xFFFFA351: 0xFFFFBE7B,
  0xFF8A307F: 0xFF79A7D3,
  0xFFCC313D: 0xFFF7C5CC,
  0xFFAA96DA: 0xFFC5FAD5,
  0xFF2C5F2D: 0xFF97BC62,
  0xFF2BAE66: 0xFFFCF6F5,
  0xFFFFE77A: 0xFF2C5F2D,
  0xFF234E70: 0xFFFBF8BE,
  0xFF408EC6: 0xFF7A2048,
  0xFFB85042: 0xFFE7E8D1,
  0xFFFFFFFF: 0xFF8AAAE5,
  0xFFFBEAEB: 0xFF2F3C7E,
  0xFFFEE715: 0xFF101820,
  0xFFF9E795: 0xFFF96167,
  0xFFCCF381: 0xFF4831D4,
  0xFFE2D1F9: 0xFF317773,
  0xFFFCF6F5: 0xFF990011,
  0xFF00FFFF: 0xFFFF69B4,
  0xFFFCEDDA: 0xFFEE4E34,
  0xFFADD8E6: 0xFF00008B,
  0xFFEA738D: 0xFF89ABE3,
  0xFF99F443: 0xFFEC449B,
  0xFFFFBE7B: 0xFFFFA351,
  0xFF79A7D3: 0xFF8A307F,
  0xFFF7C5CC: 0xFFCC313D,
  0xFFC5FAD5: 0xFFAA96DA,
  0xFF97BC62: 0xFF2C5F2D,
  0xFFFBF8BE: 0xFF234E70,
  0xFF7A2048: 0xFF408EC6,
  0xFFE7E8D1: 0xFFB85042,
};

Color getSecondaryColor(int color) {
  final secondaryColor = contrastColorPairs[color];
  if (secondaryColor != null) {
    return Color(secondaryColor);
  } else {
    return Color(color).computeLuminance() > 0.5 ? Colors.black : Colors.white;
  }
}
