import 'package:flutter/material.dart';

void main() {
  runApp(const TextfieldAll());
}

class TextfieldAll extends StatefulWidget {
  const TextfieldAll({super.key});

  @override
  State<TextfieldAll> createState() => _TextfieldAllState();
}

class _TextfieldAllState extends State<TextfieldAll> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Soogeli magacada",
              labelText: "Magaca",
            ),
          ),
        ),
      ),
    );
  }
}
