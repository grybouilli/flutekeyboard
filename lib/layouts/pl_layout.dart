// Project imports:
import 'package:flutekeyboard/src/icon_key.dart';
import 'package:flutekeyboard/src/special_key.dart';

class PlLayout {
  static const List<List> layout = [
    [
      'q',
      'w',
      'eę',
      'r',
      't',
      'y',
      'u',
      'i',
      'oó',
      'p',
    ],
    [
      'aą',
      'sś',
      'd',
      'f',
      'g',
      'h',
      'j',
      'k',
      'lł',
    ],
    [
      IconKeys.shift,
      'zźż',
      'x',
      'cć',
      'v',
      'b',
      'nń',
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
