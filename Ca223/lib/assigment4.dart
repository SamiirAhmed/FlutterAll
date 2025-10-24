import 'package:flutter/material.dart';

void main() {
  runApp(const Ca223());
}

class Ca223 extends StatefulWidget {
  const Ca223({super.key});

  @override
  State<Ca223> createState() => _Ca223State();
}

class _Ca223State extends State<Ca223> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            "Ca223",
            style: TextStyle(fontSize: 30,color: Colors.white),
          ),
        ),

        body: Container(
          padding:  EdgeInsets.fromLTRB(30, 90, 30, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    "Full Time",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "Part Time",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),

               SizedBox(height: 200),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Icon(Icons.call, size: 80, color: Colors.black,),
                  SizedBox(width: 20),
                  Icon(Icons.call, size: 80, color: Colors.black),
                  SizedBox(width: 20),
                  Icon(Icons.call, size: 80, color: Colors.black),
                ],
              ),

              SizedBox(height: 200),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Icon(Icons.call, size: 80, color: Colors.green),
                  SizedBox(width: 20),

                  Image.asset("assets/just.png", width: 80, height: 120, fit: BoxFit.cover),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
