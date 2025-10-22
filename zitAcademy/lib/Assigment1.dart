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
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
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
                    'https://images.pexels.com/photos/1118873/pexels-photo-1118873.jpeg',
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: const Text(
                  "September 6, 2025",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Programming allows us to create software that solves real-world problems?",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Programming is the process of creating instructions that tell a computer how to perform tasks. "
                    "It enables the development of applications, websites, and software tools that improve daily life, "
                    "while also enhancing problem-solving skills and logical thinking.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18, height: 1.6),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),

                child: const Text(
                  "Technology is changing the way we live and work every day.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "02 / 10",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
