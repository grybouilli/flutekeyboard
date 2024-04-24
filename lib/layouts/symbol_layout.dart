// Project imports:
import 'package:flutekeyboard/src/icon_key.dart';
import 'package:flutekeyboard/src/special_key.dart';

class SymbolLayout {
  static const List<List> layout1 = [
    [
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '0',
    ],
    [
      '-',
      '/',
      ':',
      ';',
      '(',
      ')',
      '€',
      '&',
      '@',
      '"',
    ],
    [
      SpecialKeys.symbol2,
      '.',
      ',',
      '?',
      '!',
      '’',
      IconKeys.backspace,
    ],
    [
      SpecialKeys.alpha,
      SpecialKeys.space,
      SpecialKeys.returnK,
    ],
  ];

  static const List<List> layout2 = [
    [
      '[',
      ']',
      '{',
      '}',
      '#',
      '%',
      '^',
      '*',
      '+',
      '=',
    ],
    [
      '_',
      '\\',
      '|',
      '~',
      '<',
      '>',
      '\$',
      '£',
      '¥',
      '•',
    ],
    [
      SpecialKeys.symbol1,
      '.',
      ',',
      '?',
      '!',
      '’',
      IconKeys.backspace,
    ],
    [
      SpecialKeys.alpha,
      SpecialKeys.space,
      SpecialKeys.returnK,
    ],
  ];
}
