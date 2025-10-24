import 'package:flutter/material.dart';

void main() {
  runApp(const AiTrain());
}

class AiTrain extends StatefulWidget {
  const AiTrain({super.key});

  @override
  State<AiTrain> createState() => _AiTrainState();
}

class _AiTrainState extends State<AiTrain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          title: Column(
            children: [
               Text("AiTrain",
                style: TextStyle(fontSize: 25,),
              ),
              // SizedBox(height: ,),
              Text("Ai Assistance",
                style: TextStyle(fontSize: 15,),
              ),
            ],
          ),

        ),





      ),
    );
  }
}
