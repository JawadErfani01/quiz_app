// ignore_for_file: avoid_print

import 'package:quizapp/main.dart';
import 'package:quizapp/quiz_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Result extends StatelessWidget {
  final int resultScore;

  const Result(this.resultScore, {Key? key}) : super(key: key);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 41) {
      resultText = 'You are awesome!';
      print(resultScore);
    } else if (resultScore >= 31) {
      resultText = 'Pretty likeable!';
      print(resultScore);
    } else if (resultScore >= 21) {
      resultText = 'You need to work more!';
    } else if (resultScore >= 1) {
      resultText = 'You need to work hard!';
    } else {
      resultText = 'This is a poor score!';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 33, 68, 224),
          title: const Text("Result Page"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 33, 68, 224),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                resultPhrase,
                style:
                    const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ), //Text
              Text(
                'Score ' '$resultScore',
                style:
                    const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ), //Text
              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QuizScreen()));
                    },
                    child: Container(
                      color: const Color.fromARGB(255, 42, 126, 4),
                      padding: const EdgeInsets.all(14),
                      child: const Text(
                        'Restart Quiz',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const App()),
                      );
                    },
                    icon: const Icon(
                      CupertinoIcons.home,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                    child: Container(
                      color: const Color.fromARGB(255, 134, 7, 7),
                      padding: const EdgeInsets.all(14),
                      child: const Text(
                        'Leave Quiz',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ], //<Widget>[]
          ), //Column
        ),
      ),
    );
  }
}
