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
          centerTitle: true,
          title: Text("Ai Assistance Eng ",
          style: TextStyle(fontSize:20, color: Colors.black ),

          ),

          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Icon(Icons.menu,
            size: 30,
              color: Colors.black,
            ),
          ),

          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Icon(Icons.people,
              size: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),


        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [

                CircleAvatar(
                  radius: 70,
                  foregroundImage: AssetImage("assets/profile.jpg"),

                  // backgroundColor: Colors.black,

                ),

                SizedBox(height: 35),

                Text("Eng CA223",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                Text(
                  "CEO-CA223",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 35),

                Text(
                  "(A) Knowledge-based approaches - Use structured lexical resources like WordNet, ConceptNet. - Path "
                  "based methods → Count shortest path between two concepts in a hierarchy (ontology). Example:"
                      "based methods → Count shortest path between two concepts in a hierarchy (ontology). Example:",

                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,

                  ),
                ),
                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Icon(
                        Icons.thumb_up,
                        size: 40,
                      ),
                      SizedBox(width: 80),
                      Icon(
                          Icons.message_outlined,
                        size: 40,
                      ),
                      SizedBox(width: 80),
                      Icon(
                          Icons.share_outlined,
                        size: 50,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

