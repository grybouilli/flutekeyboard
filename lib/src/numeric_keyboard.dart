// Flutter imports:
import 'package:flutekeyboard/layouts/numeric_layout.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutekeyboard/src/icon_key.dart';
import 'package:flutekeyboard/src/special_key.dart';
import 'package:flutekeyboard/src/text_key.dart';

class NumericKeyboard extends StatefulWidget {
  final TextEditingController textController;

  final Color btnColor;
  final Color btnSpecialBackgroundColor;

  final TextStyle btnTextStyle;

  final String backspaceIcon;

  final Function onReturn;

  const NumericKeyboard({
    super.key,
    required this.textController,
    required this.btnColor,
    required this.btnSpecialBackgroundColor,
    required this.btnTextStyle,
    required this.backspaceIcon,
    required this.onReturn,
  });

  @override
  State<NumericKeyboard> createState() => _NumericKeyboardState();
}

class _NumericKeyboardState extends State<NumericKeyboard> {
  final double _columnSpacing = 8;
  final double _rowSpacing = 12;

  final List<List> _currentLayout = NumericLayout.layout;

  final List<List<Widget>> _rows = [];

  void _reloadLayout() {
    _rows.clear();

    for (var j = 0; j < _currentLayout.length; j++) {
      List<Widget> r = [];
      for (var i = 0; i < _currentLayout[j].length; i++) {
        r.add(_button(_currentLayout[j][i]));
        if (i < _currentLayout[j].length - 1) {
          r.add(Padding(padding: EdgeInsets.only(left: _columnSpacing)));
        }
      }
      _rows.add(r);
    }
  }

  Widget _button(dynamic type) {
    if (type is IconKeys) {
      switch (type) {
        case IconKeys.backspace:
          return _backspaceButton();
        default:
          return const Placeholder();
      }
    }

    if (type is SpecialKeys) {
      switch (type) {
        case SpecialKeys.returnK:
          return _returnButton();
        default:
          return const Placeholder();
      }
    }

    return _textButton(type);
  }

  Widget _textButton(String text) {
    return Expanded(
      child: TextKey(
        textController: widget.textController,
        text: text,
        textStyle: widget.btnTextStyle,
        backgroundColor: widget.btnColor,
      ),
    );
  }

  Widget _backspaceButton() {
    return Expanded(
      child: IconKey(
        icon: widget.backspaceIcon,
        backgroundColor: widget.btnSpecialBackgroundColor,
        onPressed: () {
          if (widget.textController.text.isEmpty) {
            return;
          }
          widget.textController.text = widget.textController.text
              .substring(0, widget.textController.text.length - 1);
          widget.textController.selection = TextSelection.collapsed(
              offset: widget.textController.text.length);
        },
      ),
    );
  }

  Widget _returnButton() {
    return Expanded(
      child: SpecialKey(
        text: 'return',
        textStyle: widget.btnTextStyle,
        backgroundColor: widget.btnSpecialBackgroundColor,
        onPressed: () {
          widget.onReturn();
        },
      ),
    );
  }

  @override
  void initState() {
    _reloadLayout();
    super.initState();
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: _rows[0],
          ),
        ),
        Padding(padding: EdgeInsets.only(top: _rowSpacing)),
        Expanded(
          child: Row(
            children: _rows[1],
          ),
        ),
        Padding(padding: EdgeInsets.only(top: _rowSpacing)),
        Expanded(
          child: Row(
            children: _rows[2],
          ),
        ),
        Padding(padding: EdgeInsets.only(top: _rowSpacing)),
        Expanded(
          child: Row(
            children: _rows[3],
          ),
        ),
      ],
    );
  }
}
