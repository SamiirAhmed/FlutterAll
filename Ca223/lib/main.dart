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
          centerTitle: true,
          title: Text("Ai Assistance ",
          style: TextStyle(fontSize: 30, color: Colors.black),
          ),

          leading: Icon(Icons.arrow_circle_left,
            size: 40,
            color: Colors.black54,
          ),

          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.search_outlined,
                size: 30,
                color: Colors.black,


              ),
            )
          ],
        ),

        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=5'),
                backgroundColor: Colors.grey[300],
              ),

              SizedBox(height: 35),

              Text(
                "Samiir AI Assistance",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: 20,
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


