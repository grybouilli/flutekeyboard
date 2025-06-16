// Project imports:
import 'package:flutekeyboard/src/icon_key.dart';
import 'package:flutekeyboard/src/special_key.dart';

class EsLayout {
  static const List<List> layout = [
    [
      'q',
      'w',
      'eēęėëêèé',
      'r',
      't',
      'y',
      'uüûùú',
      'iïįîìí',
      'oöõôòóº',
      'p',
    ],
    [
      'aäãâàáª',
      's',
      'd',
      'f',
      'g',
      'h',
      'j',
      'k',
      'l',
      'ñ',
    ],
    [
      IconKeys.shift,
      'z',
      'x',
      'cčçć',
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
