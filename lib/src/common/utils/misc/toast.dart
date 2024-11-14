import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'toast.g.dart';

class Toast {
  Toast(this._context) {
    _fToast = FToast().init(_context);
  }
  final BuildContext _context;
  late FToast _fToast;

  void instantShow(String msg) {
    close();
    show(msg);
  }

  void show(String msg) => _fToast.showToast(
        child: ToastWidget(text: msg),
        gravity: ToastGravity.BOTTOM,
      );

  void showError(String error) => _fToast.showToast(
        child: ToastWidget(
          text: error,
          backgroundColor: Colors.red.shade400,
        ),
        gravity: ToastGravity.TOP,
      );

  void close() => _fToast.removeCustomToast();
}

class ToastWidget extends StatelessWidget {
  const ToastWidget({
    super.key,
    required this.text,
    this.icon,
    this.backgroundColor,
    this.textColor,
  });
  final String text;
  final Widget? icon;
  final Color? backgroundColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    Widget textWidget = Text(
      text,
      style: TextStyle(color: textColor ?? Colors.white),
      textAlign: TextAlign.center,
      maxLines: 5,
    );
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: backgroundColor ?? Colors.black54,
      ),
      child: icon != null
          ? Row(
              children: [
                icon!,
                const Gap(16),
                textWidget,
              ],
            )
          : textWidget,
    );
  }
}

@riverpod
Toast toast(Ref ref, BuildContext context) => Toast(context);
