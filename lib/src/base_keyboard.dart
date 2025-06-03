// Flutter imports:
import 'package:flutter/material.dart';

abstract class BaseKeyboard extends StatefulWidget {
  final TextEditingController textController;
  final Color btnColor;
  final Color btnSpecialBackgroundColor;
  final TextStyle btnTextStyle;
  final String backspaceIcon;
  final String returnIcon;
  final VoidCallback onReturn;

  const BaseKeyboard({
    super.key,
    required this.textController,
    required this.btnColor,
    required this.btnSpecialBackgroundColor,
    required this.btnTextStyle,
    required this.backspaceIcon,
    required this.returnIcon,
    required this.onReturn,
  });
}
