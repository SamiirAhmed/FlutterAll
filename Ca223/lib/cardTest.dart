import 'package:flutter/material.dart';

void main() {
  runApp(const CardTest());
}

class CardTest extends StatefulWidget {
  const CardTest({super.key});

  @override
  State<CardTest> createState() => _CardTestState();
}

class _CardTestState extends State<CardTest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("My E-Learning Application ",
          style: TextStyle(fontSize: 25,color: Colors.white),
          ),
        ),

        body: Container(
          child: Column(
            children: [
              Text("Course List",
              style: TextStyle(fontSize: 28,color: Colors.black),
              ),

              SizedBox(height: 20,),

              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 190,
                    height: 250,
                    child: Card(
                      elevation: 5,
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              child: Image.asset(
                                "assets/flu.png",
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                           Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Flutter - Premium",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                           Text(
                            "\$49.99",
                            style: TextStyle(color: Colors.green, fontSize: 20),
                          ),
                           SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),

                   SizedBox(width: 20),

                  SizedBox(
                    width: 190,
                    height: 250,
                    child: Card(
                      elevation: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              child: Image.asset(
                                "assets/pyt.png",
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Python - Premium",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Text(
                            "\$79.99",
                            style: TextStyle(color: Colors.green, fontSize: 20),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
                    SizedBox(height: 60,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 190,
                    height: 250,
                    child: Card(
                      elevation: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius:  BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              child: Image.asset(
                                "assets/Dart.png",
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Dart-Premium",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Text(
                            "\$39.99",
                            style: TextStyle(color: Colors.green, fontSize: 20),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 8),

                  SizedBox(
                    width: 190,
                    height: 250,
                    child: Card(
                      elevation: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              child: Image.asset(
                                "assets/react.png",
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "React Netive",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Text(
                            "\$49.99",
                            style: TextStyle(color: Colors.green, fontSize: 20),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
                ],
              ),







            ],
          ),
        ),

      ),
    );
  }
}

