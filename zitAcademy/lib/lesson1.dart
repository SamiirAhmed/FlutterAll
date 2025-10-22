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
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          title: Text("Lesson 1",
            style: TextStyle(fontSize: 30,color: Colors.white),
          ),
        ),

        drawer: Drawer(
          child:Center(
            child: Text("Menu App ", style: TextStyle(fontSize: 30),) ,
            ),
        ),


        body: Center(
          child: Text("Hello center",
            style: TextStyle(fontSize: 40, color: Colors.black),
          ),
        ),
          
        floatingActionButton:  FloatingActionButton(
            onPressed: null,
          child: Text("+", style: TextStyle(fontSize: 45 ),),
        
        ),

        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),
                label: ("Home"),
              ),

              BottomNavigationBarItem(icon: Icon(Icons.audio_file),
                label: ("Audio"),
              ),

              BottomNavigationBarItem(icon: Icon(Icons.document_scanner),
                label: ("Scanner"),
              ),
            ] ,

        ),

      ),
    );
  }
}
