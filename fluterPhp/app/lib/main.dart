import 'package:flutter/material.dart';
import 'package:app/mysql/homescreen.dart';

import 'mysql/getstarted.dart';
import 'mysql/login.dart';


void main() {
  runApp(const myapp());
}


class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
