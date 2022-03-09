import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _handlePress() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite food?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personality Test App'),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]),
          ElevatedButton(onPressed: _handlePress, child: const Text('Red')),
          ElevatedButton(onPressed: _handlePress, child: const Text('Green')),
          ElevatedButton(onPressed: _handlePress, child: const Text('Blue')),
        ]),
      ),
    );
  }
}
