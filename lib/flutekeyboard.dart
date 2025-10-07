library;

// Flutter imports:
import 'package:flutekeyboard/layouts/numeric_layout.dart';
import 'package:flutekeyboard/src/base_keyboard.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutekeyboard/flutekeyboard_theme.dart';
import 'package:flutekeyboard/layouts/en_layout.dart';
import 'package:flutekeyboard/src/alphanumeric_keyboard.dart';
import 'package:flutekeyboard/src/numeric_keyboard.dart';

enum FluteKeyboardType { numeric, alphanumeric }

class FluteKeyboard extends StatefulWidget {
  final FluteKeyboardType type;
  final TextEditingController textController;
  final double width;
  final double height;

  final String shiftIcon;
  final String shiftActiveIcon;
  final String backspaceIcon;
  final Layout customLayout;

  final String returnIcon;
  final VoidCallback onReturn;

  late final FluteKeyboardTheme theme;

  FluteKeyboard({
    super.key,
    required this.type,
    required this.textController,
    required this.shiftIcon,
    required this.shiftActiveIcon,
    required this.backspaceIcon,
    required this.onReturn,
    this.width = 480,
    this.height = 240,
    FluteKeyboardTheme? theme,
    this.customLayout = const [],
    this.returnIcon = '',
  }) {
    this.theme = theme ?? FluteKeyboardTheme();
  }

  @override
  State<FluteKeyboard> createState() => _FluteKeyboardState();
}

class _FluteKeyboardState extends State<FluteKeyboard> {
  Widget keyboard(FluteKeyboardType keyboardType) {
    if (keyboardType == FluteKeyboardType.numeric) {
      return NumericKeyboard(
        textController: widget.textController,
        backspaceIcon: widget.backspaceIcon,
        layout: widget.customLayout,
        returnIcon: widget.returnIcon,
        onReturn: widget.onReturn,
      );
    }

    return AlphanumericKeyboard(
      textController: widget.textController,
      shiftIcon: widget.shiftIcon,
      shiftActiveIcon: widget.shiftActiveIcon,
      backspaceIcon: widget.backspaceIcon,
      layout: widget.customLayout,
      returnIcon: widget.returnIcon,
      onReturn: widget.onReturn,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluteKeyboardTheme();

    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(color: theme.backgroundColor),
      padding: const EdgeInsets.all(8),
      child: keyboard(widget.type),
    );
  }
}
