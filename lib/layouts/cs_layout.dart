// Project imports:
import 'package:flutekeyboard/src/icon_key.dart';
import 'package:flutekeyboard/src/special_key.dart';

class CsLayout {
  static const List<List> layout = [
    [
      'q',
      'w',
      'eéě',
      'rř',
      'tť',
      'zž',
      'uúů',
      'ií',
      'oóö',
      'p',
    ],
    [
      'aåäá',
      's',
      'dď',
      'f',
      'g',
      'h',
      'j',
      'k',
      'l',
    ],
    [
      IconKeys.shift,
      'yý',
      'x',
      'cćč',
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
