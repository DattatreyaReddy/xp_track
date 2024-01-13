import 'package:flutter/material.dart';

class CenterCircularProgressIndicator extends StatelessWidget {
  const CenterCircularProgressIndicator({super.key, this.color});

  final Color? color;
  @override
  Widget build(BuildContext context) =>
      Center(child: CircularProgressIndicator(color: color));
}

class MiniCircularProgressIndicator extends StatelessWidget {
  const MiniCircularProgressIndicator({
    super.key,
    this.color,
    this.value,
    this.padding,
  });
  final Color? color;
  final double? value;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? const EdgeInsets.all(8),
        child: SizedBox.square(
          dimension: 16,
          child: CircularProgressIndicator(
            strokeWidth: 3,
            color: color,
            value: value,
          ),
        ),
      );
}
