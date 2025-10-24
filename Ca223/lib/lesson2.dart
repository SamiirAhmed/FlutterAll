import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Mr Wireless"),
          centerTitle: true,
        ),
        body: const BurgerGrid(),
      ),
    );
  }
}

class BurgerGrid extends StatelessWidget {
  const BurgerGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GridView.count(
        crossAxisCount: 2, // 2 by 2
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(4, (index) {
          return const BurgerCard();
        }),
      ),
    );
  }
}

class BurgerCard extends StatelessWidget {
  const BurgerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Sawirka Burger (Expanded si uusan qarsoomin)
            Expanded(
              flex: 5,
              child: Image.asset(
                "assets/burger1.png",
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 6),

            // Qoraal
            const Text(
              "Chicken Burger",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 4),

            // Rating + Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star, color: Colors.yellow, size: 18),
                SizedBox(width: 4),
                Text("4.9"),
              ],
            ),

            const SizedBox(height: 6),

            // Button (Expanded yar si boos fiican u haysto)
            Expanded(
              flex: 2,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(35),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text("Order"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
