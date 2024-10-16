import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ngo Minh Phuc"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNum = 1;
  void changeBall() {
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            changeBall();
          },
          child: Image(image: AssetImage("images/ball$ballNum.png"))),
    );
  }
}
