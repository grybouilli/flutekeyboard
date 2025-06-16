// Project imports:
import 'package:flutekeyboard/src/icon_key.dart';
import 'package:flutekeyboard/src/special_key.dart';

class FrLayout {
  static const List<List> layout = [
    [
      'aàâæ',
      'z',
      'eéèêë',
      'r',
      't',
      'yÿ',
      'uùûü',
      'iîï',
      'oôœ',
      'p',
    ],
    [
      'q',
      's',
      'd',
      'f',
      'g',
      'h',
      'j',
      'k',
      'l',
      'm',
    ],
    [
      IconKeys.shift,
      'w',
      'x',
      'cç',
      'v',
      'b',
      'nñ',
      IconKeys.backspace,
    ],
    [
      SpecialKeys.symbol1,
      SpecialKeys.space,
      SpecialKeys.returnK,
    ],
  ];
}
