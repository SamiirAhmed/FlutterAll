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
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://images.pexels.com/photos/669621/pexels-photo-669621.jpeg',
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30),

            Container(
              // margin: EdgeInsets.only(left: 20),
              padding: EdgeInsets.only(left: 20 , right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFFA9CBD5),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Text(
                      "Block News",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  Text(
                    "Programming allows us to create software that solves real-world problems ? ",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),

                  Text(
                    "Programming is the process of creating instructions that tell a computer how to perform tasks. "
                        "It enables the development of applications, websites, and software tools that improve daily life, "
                        "while also enhancing problem-solving skills and logical thinking.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),

                  SizedBox(height: 40),


                  Container(
                    padding: EdgeInsets.all(30),

                    decoration: BoxDecoration(
                        color: Color(0xFFA9CBD5),
                        borderRadius: BorderRadius.circular(30)

                    ),

                    child: Text(
                      "Technology is changing the way we live and work every day. "
                          "Learning programming helps us build skills for the future.",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
