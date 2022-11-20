import 'package:flutter/material.dart';

// ignore: camel_case_types
class profilepage extends StatelessWidget {
  const profilepage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 33, 68, 224),
          title: const Text("Profile Page"),
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
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/jawad.jpg"),
              ),
              const Text(
                'Jawad Erfani',
                style: TextStyle(
                  fontFamily: 'pacifico',
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'MERN Developer',
                style: TextStyle(
                  letterSpacing: 2.4,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'sanspro',
                  fontSize: 17,
                  color: Colors.teal[100],
                ),
              ),
              SizedBox(
                height: 30,
                width: 300,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: const Icon(
                    Icons.add_call,
                    color: Color.fromARGB(255, 33, 68, 224),
                  ),
                  title: Text(
                    '+93 797 302 909',
                    style: TextStyle(
                      color: Colors.teal[70],
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: const Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 33, 68, 224),
                  ),
                  title: Text(
                    'jawad.erfani147@gmail.com',
                    style: TextStyle(
                      color: Colors.teal[70],
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
