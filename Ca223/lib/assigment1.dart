import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          // backgroundColor: Colors.deepOrange,
          title: Text("Samiir",style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold
          ),
          ),
          actions: [
            Icon(Icons.person ,size: 30 ,)
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              // push buttons down
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed:()=>(),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(120, 50),
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("Burger",style: TextStyle(
                        fontSize: 20
                    ),),
                  ),
                  OutlinedButton
                    (onPressed:()=>(),
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(120,50),
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,

                      ),
                      child: Text("Drink",style: TextStyle(
                          fontSize: 20
                      ),)
                  ),
                  OutlinedButton
                    (onPressed:()=>(),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(120,50),
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("Food" ,style: TextStyle(
                        fontSize: 20
                    ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.white,
                    width: 200,
                    height: 200,
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/burger1.png'),
                          width: 100,
                          height: 100,
                        ),
                        Text("Chicken Burger", style: TextStyle(
                            fontSize: 20,color: Colors.black
                        ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.star , size: 40,color: Colors.yellow,),
                            Text("4.9"),
                            Icon(Icons.favorite, size: 40,)
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    color: Colors.white,
                    width: 200,
                    height: 200,
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/burger2.png'),
                          width: 100,
                          height: 100,
                        ),
                        Text("Chicken Burger", style: TextStyle(
                            fontSize: 20,color: Colors.black
                        ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.star , size: 40,color: Colors.yellow,),
                            Text("4.9"),
                            Icon(Icons.favorite, size: 40,)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.white,
                    width: 200,
                    height: 200,
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/burger3.png'),
                          width: 100,
                          height: 100,
                        ),
                        Text("Chicken Burger", style: TextStyle(
                            fontSize: 20,color: Colors.black
                        ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.star , size: 40,color: Colors.yellow,),
                            Text("4.9"),
                            Icon(Icons.favorite, size: 40,)
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    color: Colors.white,
                    width: 200,
                    height: 200,
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/burger4.png'),
                          width: 100,
                          height: 100,
                        ),
                        Text("Chicken Burger", style: TextStyle(
                            fontSize: 20,color: Colors.black
                        ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.star , size: 40,color: Colors.yellow,),
                            Text("4.9"),
                            Icon(Icons.favorite, size: 40,)
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              RichText(
                text: TextSpan(
                  text: "Samiir",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Ahmed",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.yellow,
                      ),
                    ),
                    TextSpan(
                        text: "Wehliye",
                        style: TextStyle(
                          color: Colors.red,
                        )
                    )
                  ],
                ),
              ),
              // TextButton(
              //   onPressed: () {},
              //   child: Text("press here!"),
              // ),
              // ElevatedButton(
              //   onPressed: () => (),
              //   child: Text("click here"),
              // ),
              // OutlinedButton(
              //   onPressed: () {},
              //   child: Text("on click"),
              //   style: OutlinedButton.styleFrom(
              //     backgroundColor: Colors.blue,
              //     foregroundColor: Colors.white,
              //     fixedSize: Size(300, 50),
              //   ),
              // ),
              // IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.key),
              // ),
              // OutlinedButton.icon(
              //   onPressed: () {},
              //   icon: Icon(
              //     Icons.key,
              //   ),
              //   label: Text("login"),
              // ),
              // ElevatedButton.icon(
              //   onPressed: () {},
              //   icon: Icon(Icons.home),
              //   label: Text("click here"),
              // ),

              // Card(
              //   color: Colors.teal,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(30),
              //   ),
              //   child: Expanded(
              //     child: Row(
              //       children: [
              //         SizedBox(
              //           width: 20,
              //         ),
              //         CircleAvatar(
              //           radius: 30,
              //           backgroundImage: AssetImage("images/bger1.jpg"),
              //         ),
              //         SizedBox(
              //           width: 20,
              //         ),
              //         Text(
              //           "sample text using card widget",
              //           style: TextStyle(
              //             fontSize: 20,
              //             color: Colors.white,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

            ],
          ),
        ),
      ),

    ),

  );
}