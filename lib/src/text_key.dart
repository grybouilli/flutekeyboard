// Flutter imports:
import 'package:flutter/material.dart';

class TextKey extends StatefulWidget {
  final TextEditingController textController;

  final String text;

  final TextStyle textStyle;

  final Color backgroundColor;

  const TextKey({
    super.key,
    required this.textController,
    required this.text,
    required this.textStyle,
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
        // Cursor is at the end of the text.
        if (widget.textController.selection.start ==
            widget.textController.text.length) {
          widget.textController.text += widget.text;
          widget.textController.selection = TextSelection.collapsed(
              offset: widget.textController.text.length);
        } else {
          final oldCursorPos = widget.textController.selection.start;

          widget.textController.text = widget.textController.text.replaceRange(
            widget.textController.selection.start,
            widget.textController.selection.end,
            widget.text,
          );

          widget.textController.selection = TextSelection.fromPosition(
            TextPosition(offset: oldCursorPos + 1),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            widget.text,
            style: widget.textStyle,
          ),
        ),
      ),
    );
  }
}
