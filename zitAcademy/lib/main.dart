import 'package:flutter/material.dart';

void main() {
  runApp(const Lesson1());
}

class Lesson1 extends StatefulWidget {
  const Lesson1({super.key});

  @override
  State<Lesson1> createState() => _Lesson1State();
}

class _Lesson1State extends State<Lesson1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Hello samiir Boss",
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Text("Hello world ",
            style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold, color: Colors.green
            ),
            textAlign: TextAlign.center,
          ),

        ),
      ),
    );

  }
}
