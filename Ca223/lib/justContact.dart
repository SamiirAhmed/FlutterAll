import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(const Just());
}


class Just extends StatefulWidget {
  const Just({super.key});

  @override
  State<Just> createState() => _PracticeState();
}

class _PracticeState extends State<Just> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false
      ,
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text("Help & Support ",
            style: TextStyle(fontSize: 30,color: Colors.black),
          ),

          leading: Icon(Icons.menu,color: Colors.green,size: 30,),
        ),

        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),

                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFF8E2DE2),
                              Color(0xFF4CAF50),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Card(
                              elevation: 3,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon(Icons.call, color: Colors.green),

                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Need Some Help ?",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "We are Happy To Help you anytime",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              
              // end bodysection1 section

              SizedBox(height: 30,),


              Row(
                children: [
                  Card(
                    elevation: 12,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),

                      child: Icon(Icons.message_outlined,color: Colors.green,),
                    ),
                  ),
                  SizedBox(width: 20,),
                   Text("Support Optionns",
                    style: TextStyle(fontSize: 22),
                       ),
                ],
              ),


              SizedBox(height: 20,),


              Row(
                children: [
                  SizedBox(
                    width: 400,
                    height: 120,
                    child: Card(
                      elevation: 10,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: Colors.red,
                              size: 38,
                            ),
                            SizedBox(width: 18),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Phone Support",
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text("Call our Helpline for immediate assistance"),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.search_outlined,color: Colors.red,size: 28,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15,),


              Row(
                children: [
                  SizedBox(
                    width: 400,
                    height: 120,
                    child: Card(
                      elevation: 10,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.email,
                              color: Colors.blue,
                              size: 38,
                            ),
                            SizedBox(width: 18),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Email Support",
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text("Send us You  queries via email "),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.search_outlined,color: Colors.blue,size: 28,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15,),



              Row(
                children: [
                  SizedBox(
                    width: 400,
                    height: 120,
                    child: Card(
                      elevation: 10,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Icon(Icons.call,color: Colors.green,size: 28,),

                            SizedBox(width: 18),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Whatsapp Chat",
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text("chat with directely on whatsapp"),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.search_outlined,color: Colors.green,size: 28,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15,),






            ],
          ),
        ),
      ),
    );
  }
}

