// Project imports:
import 'package:flutekeyboard/src/icon_key.dart';
import 'package:flutekeyboard/src/special_key.dart';

class EnLayout {
  static const List<List> layout = [
    [
      'q',
      'w',
      'eéèêë',
      'r',
      't',
      'y',
      'uúùûü',
      'iíìîï',
      'oóòôöõ',
      'p',
    ],
    [
      'aáàâäã',
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
      'cç',
      'v',
      'b',
      'nñ',
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
