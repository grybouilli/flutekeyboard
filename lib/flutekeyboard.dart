library flutekeyboard;

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutekeyboard/layouts/en_layout.dart';
import 'package:flutekeyboard/src/alphanumeric_keyboard.dart';
import 'package:flutekeyboard/src/numeric_keyboard.dart';

enum FluteKeyboardType { numeric, alphanumeric }

class FluteKeyboard extends StatefulWidget {
  final FluteKeyboardType type;

  final TextEditingController textController;

  final double width;
  final double height;

  final Color backgroundColor;

  final Color btnBackgroundColor;
  final Color btnSpecialBackgroundColor;

  final TextStyle btnTextStyle;

  final String shiftIcon;
  final String shiftActiveIcon;

  final String backspaceIcon;

  final Layout alphanumericLayout;

  final String returnIcon;
  final Function onReturn;

  const FluteKeyboard({
    super.key,
    required this.type,
    required this.textController,
    required this.shiftIcon,
    required this.shiftActiveIcon,
    required this.backspaceIcon,
    required this.onReturn,
    this.width = 480,
    this.height = 240,
    this.backgroundColor = Colors.transparent,
    this.btnBackgroundColor = Colors.transparent,
    this.btnSpecialBackgroundColor = Colors.transparent,
    this.btnTextStyle = const TextStyle(color: Colors.white),
    this.alphanumericLayout = EnLayout.layout,
    this.returnIcon = '',
  });

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
        btnTextStyle: widget.btnTextStyle,
        backspaceIcon: widget.backspaceIcon,
        returnIcon: widget.returnIcon,
        onReturn: widget.onReturn,
      );
    }

    return AlphanumericKeyboard(
      textController: widget.textController,
      btnColor: widget.btnBackgroundColor,
      btnSpecialBackgroundColor: widget.btnSpecialBackgroundColor,
      shiftIcon: widget.shiftIcon,
      shiftActiveIcon: widget.shiftActiveIcon,
      btnTextStyle: widget.btnTextStyle,
      backspaceIcon: widget.backspaceIcon,
      layout: widget.alphanumericLayout,
      returnIcon: widget.returnIcon,
      onReturn: widget.onReturn,
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
