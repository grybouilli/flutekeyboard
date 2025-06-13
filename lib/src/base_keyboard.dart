// Flutter imports:
import 'package:flutter/material.dart';

abstract class BaseKeyboard extends StatefulWidget {
  final TextEditingController textController;
  final String backspaceIcon;
  final String returnIcon;
  final VoidCallback onReturn;

  const BaseKeyboard({
    super.key,
    required this.textController,
    required this.backspaceIcon,
    required this.returnIcon,
    required this.onReturn,
  });
}
