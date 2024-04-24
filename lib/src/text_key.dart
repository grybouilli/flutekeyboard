// Flutter imports:
import 'package:flutter/material.dart';

class TextKey extends StatefulWidget {
  final TextEditingController textController;

  final String text;

  final Color textColor;

  final Color backgroundColor;

  const TextKey({
    super.key,
    required this.textController,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
  });

  @override
  State<TextKey> createState() => _TextKeyState();
}

class _TextKeyState extends State<TextKey> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.textController.text += widget.text;
        widget.textController.selection =
            TextSelection.collapsed(offset: widget.textController.text.length);
      },
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
