// Project imports:
import 'package:flutekeyboard/src/icon_key.dart';
import 'package:flutekeyboard/src/special_key.dart';

class DeLayout {
  static const List<List> layout = [
    [
      'q',
      'w',
      'e',
      'r',
      't',
      'z',
      'u',
      'i',
      'o',
      'p',
      'ü',
    ],
    [
      'a',
      'sß',
      'd',
      'f',
      'g',
      'h',
      'j',
      'k',
      'l',
      'ö',
      'ä',
    ],
    [
      IconKeys.shift,
      'y',
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
