import 'package:flutter/material.dart';

void main() {
  runApp(const Practice());
}


class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false
      ,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          // centerTitle: true,
          title: Text("Setting ",
            style: TextStyle(fontSize: 30,color: Colors.white),
          ),
        ),

        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Card(
                        color: Colors.green,
                        elevation: 5,
                        child: Row(
                          children: [
                            Image.asset("assets/burger1.png", width: 150, height: 150, fit: BoxFit.cover),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                            child: Text("Hello Iam samiir Ahmed wehliye",
                            style: TextStyle(fontSize: 16,color: Colors.white),
                            ),

                            ),
                          ],
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 10,),

              Text("General",
              
              style: TextStyle(fontSize: 25),
              ),

              SizedBox(height: 20,),


              Row(
                children: [
                  SizedBox(
                    width: 400,
                    height: 80,
                    child: Card(
                      elevation: 10,
                      color: Colors.orange,
                      child: Row(
                        children: [
                          Icon(Icons.home,color: Colors.white,fontWeight: FontWeight.bold,

                          ),
                          SizedBox(width: 10,),
                          Text("Home",
                          style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(height: 15,),

              Row(
                children: [
                  SizedBox(
                    width: 400,
                    height: 80,
                    child: Card(
                      elevation: 10,
                      color: Colors.orange,
                      child: Row(
                        children: [
                          Icon(Icons.menu,color: Colors.white,fontWeight: FontWeight.bold,),
                          SizedBox(width: 10,),
                          Text("Menu",
                            style: TextStyle(fontSize: 20),
                          ),

                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15,),

              Row(
                children: [
                  SizedBox(
                    width: 400,
                    height: 80,
                    child: Card(
                      elevation: 10,
                      color: Colors.orange,
                      child: Row(
                        children: [
                          Icon(Icons.search,color: Colors.white,fontWeight: FontWeight.bold,),
                          SizedBox(width: 10,),
                          Text("Search",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15,),

              Row(
                children: [
                  SizedBox(
                    width: 400,
                    height: 80,
                    child: Card(
                      elevation: 10,
                      color: Colors.orange,
                      child: Row(
                        children: [
                          Icon(Icons.thumb_up,color: Colors.white,fontWeight: FontWeight.bold,),
                          SizedBox(width: 10,),
                          Text("Like",
                            style: TextStyle(fontSize: 20,),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(height: 15,),


              Row(
                children: [
                  SizedBox(
                    width: 400,
                    height: 80,
                    child: Card(
                      elevation: 10,
                      color: Colors.orange,
                      child: Row(
                        children: [
                          Icon(Icons.settings,color: Colors.white,fontWeight: FontWeight.bold,),
                          SizedBox(width: 10,),

                          Text("setting",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15,),

              Row(
                children: [
                  SizedBox(
                    width: 400,
                    height: 80,
                    child: Card(
                      elevation: 10,
                      color: Colors.orange,
                      child: Row(
                        children: [
                          Icon(Icons.login,color: Colors.white,fontWeight: FontWeight.bold,),
                          SizedBox(width: 10,),
                          Text("Login",
                            style: TextStyle(fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),



            ],




          ),



        ),

      ),
    );
  }
}

