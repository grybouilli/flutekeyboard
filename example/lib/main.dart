// Flutter imports:
import 'package:example/custom_layout.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutekeyboard/flutekeyboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutekeyboard Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutekeyboard Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController _textController;

  FluteKeyboardType type = FluteKeyboardType.alphanumeric;

  @override
  void initState() {
    _textController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              height: 160,
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: _textController,
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: 'Type something',
                  labelStyle: TextStyle(
                    fontSize: 36,
                  ),
                ),
                style: const TextStyle(
                  fontSize: 54,
                  color: Colors.black,
                ),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () => setState(
                () {
                  if (type == FluteKeyboardType.alphanumeric) {
                    type = FluteKeyboardType.numeric;
                  } else {
                    type = FluteKeyboardType.alphanumeric;
                  }
                },
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.black12,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9.6)),
                minimumSize: const Size(352, 96),
                maximumSize: const Size(352, 96),
              ),
              child: const Text('Switch keyboard'),
            ),
            const Spacer(),
            Expanded(
              child: FluteKeyboard(
                width: 800,
                type: type,
                alphanumericLayout: CustomLayout.layout,
                textController: _textController,
                backgroundColor: const Color.fromARGB(255, 209, 211, 215),
                btnBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
                btnSpecialBackgroundColor:
                    const Color.fromARGB(255, 171, 175, 183),
                backspaceIcon: 'assets/backspace.png',
                shiftIcon: 'assets/shift.png',
                shiftActiveIcon: 'assets/shift_active.png',
                onReturn: () {
                  print(_textController.text);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
