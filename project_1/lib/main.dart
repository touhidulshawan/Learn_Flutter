import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void answeredQuestion() => print("Question Answered");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First App'),
        ),
        body: Column(children: [
          const Text('What is you favourite color?'),
          ElevatedButton(onPressed: answeredQuestion, child: const Text('Red')),
          ElevatedButton(onPressed: answeredQuestion, child: const Text('Green')),
          ElevatedButton(onPressed: answeredQuestion, child: const Text('Blue')),
          ElevatedButton(onPressed: answeredQuestion, child: const Text('Yellow')),
        ]),
      ),
    );
  }
}

