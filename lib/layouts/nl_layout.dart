// Project imports:
import 'package:flutekeyboard/src/icon_key.dart';
import 'package:flutekeyboard/src/special_key.dart';

class NlLayout {
  static const List<List> layout = [
    [
      'q',
      'w',
      'eêëèé',
      'rŕř',
      'tţŧť',
      'yÿýŷ',
      'uűūũûüùú',
      'iîïīĩìí',
      'oœøõôöòó',
      'p',
    ],
    [
      'aäåãâàá',
      'sšşś',
      'dđď',
      'f',
      'gġģĝğ',
      'h',
      'j',
      'k',
      'lĺŀłļľ',
    ],
    [
      IconKeys.shift,
      'zžż',
      'x',
      'cçċčć',
      'v',
      'b',
      'nņńň',
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
