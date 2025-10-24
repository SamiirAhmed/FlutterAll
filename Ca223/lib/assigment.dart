import 'package:flutter/material.dart';

void main() {
  runApp(const Lesson4());
}

class Lesson4 extends StatefulWidget {
  const Lesson4({super.key});

  @override
  State<Lesson4> createState() => _Lesson4State();
}

class _Lesson4State extends State<Lesson4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          title: const Text(
            "Practice ",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          leading: const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Icon(Icons.menu,
              size: 30,
              color: Colors.white,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 25),
              child: Icon(Icons.people,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),

        body: Container(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              // -------- Buttons --------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      "Burger",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 15),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),

                    child: const Text(
                      "Drinks",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),

                  const SizedBox(width: 15),

                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      "Food",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // -------- Cards --------
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          color: Colors.orange[50],
                          elevation: 5,
                          child: Column(
                            children: [
                              Image.asset("assets/burger1.png", width: 150, height: 150, fit: BoxFit.cover),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Icon(Icons.favorite, color: Colors.red),
                                    Text('Burger 1'),
                                    Icon(Icons.shopping_cart, color: Colors.blue),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                      ),
                      Expanded(
                        child: Card(
                          color: Colors.orange[50],
                          elevation: 5,
                          child: Column(
                            children: [
                              Image.asset("assets/burger2.png", width: 150, height: 150, fit: BoxFit.cover),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Icon(Icons.favorite, color: Colors.red),
                                    Text('Burger 2'),
                                    Icon(Icons.shopping_cart, color: Colors.blue),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          color: Colors.orange[50],
                          elevation: 5,
                          child: Column(
                            children: [
                              Image.asset("assets/burger3.png", width: 150, height: 150, fit: BoxFit.cover),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Icon(Icons.favorite, color: Colors.red),
                                    Text('Burger 3'),
                                    Icon(Icons.shopping_cart, color: Colors.blue),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          color: Colors.deepOrange[50],
                          elevation: 5,
                          child: Column(
                            children: [
                              Image.asset("assets/burger3.png", width: 150, height: 150, fit: BoxFit.cover),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Icon(Icons.favorite, color: Colors.red),
                                    Text('Burger 4'),
                                    Icon(Icons.shopping_cart, color: Colors.blue),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 40),

              RichText(
                text: const TextSpan(
                  text: "Samiir ",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Ahmed ",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.yellow,
                      ),
                    ),
                    TextSpan(
                      text: "Wehliye",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
