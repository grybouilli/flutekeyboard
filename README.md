# Flutekeyboard

Virtual keyboard usable in any Flutter platform. Fully customizable both in layout and design.

## Getting Started

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  ...
  flutekeyboard: ^0.1.0
```

or

```yaml
dependencies:
  ...
  flutekeyboard:
    git:
      url: https://github.com/amarula/flutekeyboard.git
      ref: main
```

To use the keyboard widget import it:

```dart
import 'package:flutekeyboard/flutekeyboard.dart';
```

To create custom layout import:

```dart
import 'package:flutekeyboard/flutekeyboard_keys.dart';
```


## Usage

### Basic Alphanumeric Keyboard

```dart
    Expanded(
      child: FluteKeyboard(
        width: 800,
        type: FluteKeyboardType.alphanumeric,
        textController: _textController,
        backgroundColor: const Color.fromARGB(255, 209, 211, 215),
        btnBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        btnSpecialBackgroundColor:
            const Color.fromARGB(255, 171, 175, 183),
        backspaceIcon: 'assets/backspace.png',
        btnTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                ),
        shiftIcon: 'assets/shift.png',
        shiftActiveIcon: 'assets/shift_active.png',
      ),
    ),
```

![Basic Alphanumeric Keyboard](screenshots/basic_alphanum_keyboard.png)

### Custom Alphanumeric Layout

```dart
import 'package:flutekeyboard/flutekeyboard_keys.dart';

class CustomLayout {
  static const List<List> layout = [
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
```

![Custom Alphanumeric Keyboard](screenshots/custom_alphanum_keyboard.png)

## Screenshots

<p align="center">
  <img src="screenshots/flutekeyboard.gif" />
</p>