import 'package:flutter/material.dart';

void main() {
  runApp(const Lesson2());
}

class Lesson2 extends StatefulWidget {
  const Lesson2({super.key});

  @override
  State<Lesson2> createState() => _Lesson2State();
}

class _Lesson2State extends State<Lesson2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        // backgroundColor: Colors.black12,

        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          titleSpacing: 20,
          toolbarHeight: 60,
          elevation: 30,
          shadowColor: Colors.blue,

          title: const Text(
            "Gym App ",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),

          leading: const Icon(Icons.menu, color: Colors.white ,),

          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search, color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart, color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.person, color: Colors.white),
            ),
          ],
        ),

        body: const Center(
          child: Text(
            "Center Gym App ",
            style: TextStyle(fontSize: 35, color: Colors.blue),
          ),


        ),



        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.audio_file),
              label: "Audio",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.document_scanner),
              label: "Scanner",
            ),
          ],
        ),
      ),
    );
  }
}
