import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter Quiz App with Jawad Erfani'),
        ),
        body: const Center(
          child: Text('Hey! Do you want to try a Quiz?'),
        ),
      ),
    );
  }
}
