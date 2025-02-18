// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutekeyboard/layouts/numeric_layout.dart';
import 'package:flutekeyboard/src/buttons.dart';
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
          return Buttons.backspaceButton(widget.backspaceIcon,
              widget.btnSpecialBackgroundColor, widget.textController);
        default:
          return const Placeholder();
      }
    }

    if (type is SpecialKeys) {
      switch (type) {
        case SpecialKeys.returnK:
          return Buttons.returnButton(widget.btnTextStyle,
              widget.btnSpecialBackgroundColor, widget.onReturn);
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
