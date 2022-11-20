import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'A',
      'B',
      'C',
      'e',
      'f',
      "g",
      'h',
      "k",
      "l",
      "m"
    ];
    final List<int> colorCodes = <int>[
      600,
      500,
      100,
      600,
      500,
      100,
      600,
      500,
      100,
      100
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 33, 68, 224),
            title: const Text("Leader Page"),
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
            children: [
              Center(
                child: Image.asset(
                  "assets/coup.jpg",
                  height: 100,
                ),
              ),
              const Divider(
                color: Colors.white, //color of divider
                height: 5, //height spacing of divider
                thickness: 3, //thickness of divier line
                indent: 25, //spacing at the start of divider
                endIndent: 25, //spacing at the end of divider
              ),
              Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: entries.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        color: Colors.amber[colorCodes[index]],
                        child: Center(child: Text('User ${entries[index]}')),
                      );
                    }),
              ),
            ],
          ))),
    );
  }
}
