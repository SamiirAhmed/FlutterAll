import 'package:flutter/material.dart';

void main() {
  runApp(const Lesson3());
}

class Lesson3 extends StatefulWidget {
  const Lesson3({super.key});

  @override
  State<Lesson3> createState() => _Lesson3State();
}

class _Lesson3State extends State<Lesson3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
          title: Text("Practice Lesson 1 ",
          style: TextStyle(fontSize: 25,color: Colors.black),

          ),



          leading: Icon(Icons.menu,
            size: 25,

          ),

          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.people_outline,
                size: 35,

              ),
            ),
          ],

        ),


        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 40,
                foregroundImage: AssetImage("assets/profile.jpg"),
              ),

              SizedBox(height: 35),

              Text("Eng Ca223",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),

              ),
            ],

          ),
        ),
        
        
      ),
    );
  }
}
