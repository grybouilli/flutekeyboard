library flutekeyboard;

// Flutter imports:
import 'package:flutekeyboard/layouts/en_layout.dart';
import 'package:flutekeyboard/src/numeric_keyboard.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutekeyboard/src/alphanumeric_keyboard.dart';

enum FluteKeyboardType { numeric, alphanumeric }

class FluteKeyboard extends StatefulWidget {
  final FluteKeyboardType type;

  final TextEditingController textController;

  final double width;
  final double height;

  final Color backgroundColor;

  final Color btnBackgroundColor;
  final Color btnSpecialBackgroundColor;

  final String btnTextFontFamily;
  final double btnTextFontSize;
  final Color btnTextColor;

  final String shiftIcon;
  final String shiftActiveIcon;

  final String backspaceIcon;

  final Layout alphanumericLayout;

  const FluteKeyboard(
      {super.key,
      required this.type,
      required this.textController,
      required this.shiftIcon,
      required this.shiftActiveIcon,
      required this.backspaceIcon,
      this.width = 480,
      this.height = 240,
      this.backgroundColor = Colors.transparent,
      this.btnBackgroundColor = Colors.transparent,
      this.btnSpecialBackgroundColor = Colors.transparent,
      this.btnTextFontFamily = '',
      this.btnTextFontSize = 24,
      this.btnTextColor = Colors.transparent,
      this.alphanumericLayout = EnLayout.layout});

  @override
  State<FluteKeyboard> createState() => _FluteKeyboardState();
}

class _FluteKeyboardState extends State<FluteKeyboard> {
  Widget keyboard(FluteKeyboardType keyboardType) {
    if (keyboardType == FluteKeyboardType.numeric) {
      return NumericKeyboard(
        textController: widget.textController,
        btnColor: widget.btnBackgroundColor,
        btnSpecialBackgroundColor: widget.btnSpecialBackgroundColor,
        backspaceIcon: widget.backspaceIcon,
      );
    }

    return AlphanumericKeyboard(
      textController: widget.textController,
      btnColor: widget.btnBackgroundColor,
      btnSpecialBackgroundColor: widget.btnSpecialBackgroundColor,
      shiftIcon: widget.shiftIcon,
      shiftActiveIcon: widget.shiftActiveIcon,
      backspaceIcon: widget.backspaceIcon,
      layout: widget.alphanumericLayout,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(color: widget.backgroundColor),
      padding: const EdgeInsets.all(8),
      child: keyboard(widget.type),
    );
  }
}
