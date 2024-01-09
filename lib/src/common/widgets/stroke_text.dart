import 'package:flutter/material.dart';

class StrokeText extends StatelessWidget {
  final String text;
  final double strokeWidth;
  final Color strokeColor;
  final TextStyle? style;

  const StrokeText(
    this.text, {
    super.key,
    this.strokeWidth = 1,
    this.strokeColor = Colors.white,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Stroked text as border.
        Text(
          text,
          style: TextStyle(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth
              ..color = strokeColor,
          ).merge(style),
        ),
        // Solid text as fill.
        Text(
          text,
          style: style,
        ),
      ],
    );
  }
}
