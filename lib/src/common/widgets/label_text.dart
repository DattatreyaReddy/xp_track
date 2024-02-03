import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  const LabelText({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      "$label:",
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        letterSpacing: 0,
        color: Colors.grey,
      ),
    );
  }
}
