import 'package:demo_application/const/colors.dart';
import 'package:demo_application/const/text_style.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: blue));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const QuizApp(),
      theme: ThemeData(
        fontFamily: "quick",
      ),
      title: "Demo",
    );
  }
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [blue, darkBlue],
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: lightgrey, width: 1),
                    ),
                    child: IconButton(
                      onPressed: () {
                     
                      },
                      icon: const Icon(
                        CupertinoIcons.person_3,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: lightgrey, width: 1),
                    ),
                    child: IconButton(
                        onPressed: () {
                   
                        },
                        icon: const Icon(
                          CupertinoIcons.person_alt_circle,
                          color: Colors.white,
                          size: 28,
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Center(
                child: Image.asset(
                  "assets/main.png",
                  height: 200,
                ),
              ),
              const SizedBox(height: 15),
              normalText(color: lightgrey, size: 18, text: "Welcome to our"),
              headingText(color: Colors.white, size: 32, text: "Quiz App"),
              const SizedBox(height: 15),
              normalText(
                  color: lightgrey,
                  size: 16,
                  text:
                      "Do you feel confident? Here you will face our most important CS questions!"),
              const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text("this is input")),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                   
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    alignment: Alignment.center,
                    width: size.width - 100,
                    padding: const EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: headingText(color: blue, size: 17, text: "Start"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
