// Project imports:
import 'package:flutekeyboard/src/icon_key.dart';
import 'package:flutekeyboard/src/special_key.dart';

class PtLayout {
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
      'oöõôòó',
      'p',
    ],
    [
      'aäãâàá',
      's',
      'd',
      'f',
      'g',
      'h',
      'j',
      'k',
      'l',
      'ç',
    ],
    [
      IconKeys.shift,
      'z',
      'x',
      'cčć',
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
