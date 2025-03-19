import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text("Ask Me Anything"),
          foregroundColor: Colors.white,
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: MagicBallPage(),
      ),
    ),
  );
}

class MagicBallPage extends StatefulWidget {
  const MagicBallPage({super.key});

  @override
  State<MagicBallPage> createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int answer = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: () {
            setState(() {
              answer = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset("images/ball$answer.png"),
        ),
      ),
    );
  }
}
