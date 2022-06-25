import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 15, 79, 136),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 8, 54, 105),
          centerTitle: true,
          title: const Text(
            'Ask me anything',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: const AskMe(),
      ),
    );
  }
}

class AskMe extends StatefulWidget {
  const AskMe({Key? key}) : super(key: key);

  @override
  State<AskMe> createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {
  int imagNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/ball$imagNo.png'),
              onPressed: () {
                setState(() {
                  imagNo = Random().nextInt(5) + 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
