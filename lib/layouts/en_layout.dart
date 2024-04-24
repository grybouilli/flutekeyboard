// Project imports:
import 'package:flutekeyboard/src/icon_key.dart';
import 'package:flutekeyboard/src/special_key.dart';

class EnLayout {
  static const List<List> layout = [
    [
      'q',
      'w',
      'e',
      'r',
      't',
      'y',
      'u',
      'i',
      'o',
      'p',
    ],
    [
      'a',
      's',
      'd',
      'f',
      'g',
      'h',
      'j',
      'k',
      'l',
    ],
    [
      IconKeys.shift,
      'z',
      'x',
      'c',
      'v',
      'b',
      'n',
      'm',
      IconKeys.backspace,
    ],
    [
      SpecialKeys.symbol1,
      SpecialKeys.space,
      SpecialKeys.returnK,
    ],
  ];
}
