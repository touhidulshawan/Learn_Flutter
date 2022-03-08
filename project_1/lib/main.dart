import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void handlePress() {
    setState(() {
      questionIndex += 1;
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
          Text(questions[questionIndex]),
          ElevatedButton(onPressed: handlePress, child: const Text('Red')),
          ElevatedButton(onPressed: handlePress, child: const Text('Green')),
          ElevatedButton(onPressed: handlePress, child: const Text('Blue')),
        ]),
      ),
    );
  }
}
