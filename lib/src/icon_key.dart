// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

enum IconKeys {
  shift,
  backspace,
}

class IconKey extends StatefulWidget {
  final String icon;

  final Color backgroundColor;

  final Function onPressed;

  const IconKey({
    super.key,
    required this.icon,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  State<IconKey> createState() => _IconKeyState();
}

class _IconKeyState extends State<IconKey> {
  bool _longPress = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onPressed(),
      onLongPress: () {
        _longPress = true;
        Timer.periodic(
          const Duration(milliseconds: 200),
          (timer) {
            if (_longPress) {
              widget.onPressed();
            } else {
              timer.cancel();
            }
          },
        );
      },
      onLongPressUp: () {
        _longPress = false;
      },
      child: Container(
        decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Image.asset(
            widget.icon,
          ),
        ),
      ),
    );
  }
}
