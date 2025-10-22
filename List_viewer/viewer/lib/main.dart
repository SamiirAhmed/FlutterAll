import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Global Design", style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 251, 92, 60),
          actions: [Icon(Icons.more_vert, color: Colors.white)],
          leading: Icon(Icons.menu, color: Colors.white),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Image.asset(
                "assets/images/bg.jpg",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                width: double.infinity,

                height: 80,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: const Color.fromARGB(98, 0, 0, 0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "    keymaha duuleedka badadweyne",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                        Text(
                          "Mogadishu, Somalia                    ",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Icon(Icons.favorite, color: Colors.red, size: 30),
                        Text("22  "),
                      ],
                    ),
                  ],
                ),
              ),
              Container(height: 100, width: double.infinity),

              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Icon(
                          Icons.call,
                          color: const Color.fromARGB(255, 251, 92, 60),
                          size: 30,
                        ),
                        Text(
                          "CALL",
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 251, 92, 60),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(
                          Icons.near_me,
                          color: const Color.fromARGB(255, 251, 92, 60),
                          size: 30,
                        ),
                        Text(
                          "ROUTE",
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 251, 92, 60),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: const Color.fromARGB(255, 251, 92, 60),
                          size: 30,
                        ),
                        Text(
                          "SHARE",
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 251, 92, 60),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Container(height: 50, width: double.infinity),

              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}