// Flutter imports:
import 'package:flutter/material.dart';

enum SpecialKeys {
  space,
  symbol1,
  symbol2,
  alpha,
  returnK,
}

class SpecialKey extends StatefulWidget {
  final String text;

  final Color textColor;

  final Color backgroundColor;

  final Function onPressed;

  const SpecialKey({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  State<SpecialKey> createState() => _SpecialKeyState();
}

class _SpecialKeyState extends State<SpecialKey> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onPressed(),
      child: Container(
        decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 24,
              color: widget.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
