import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  bool visible = false;

  Future wbCall() async {
    setState(() {
      visible = true;
    });

    var url =
      Uri.parse("http://10.0.2.2/bacendfluter/genrate_fluter.php");

    var data = {
      "name": nameController.text,
      "email": emailController.text,
      "phone_Number": phoneController.text
    };

    try {
      var response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(data),
      );

      var message = jsonDecode(response.body);

      // Show dialog
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Row(
            children: [
              Icon(
                message['success'] == true ? Icons.check_circle : Icons.error,
                color: message['success'] == true ? Colors.green : Colors.red,
              ),
              const SizedBox(width: 10),
              Text(message['success'] == true ? "Success" : "Error"),
            ],
          ),
          content: Text(message['message'] ?? ""),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("OK"),
            ),
          ],
        ),
      );

      // Clear fields if success
      if (message['success'] == true) {
        nameController.clear();
        emailController.clear();
        phoneController.clear();
      }
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Row(
            children: const [
              Icon(Icons.error, color: Colors.red),
              SizedBox(width: 10),
              Text("Error"),
            ],
          ),
          content: Text("Something went wrong: $e"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("OK"),
            ),
          ],
        ),
      );
    } finally {
      setState(() {
        visible = false;
      });
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      body: Center(
        child: Card(
          elevation: 12,
          color: Colors.white,
          shadowColor: Colors.deepPurple.withOpacity(0.25),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Personal Details 💼",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 30),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Username",
                    prefixIcon: const Icon(Icons.person_outline_rounded),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Enter your username",
                    hintStyle:
                        const TextStyle(color: Colors.black, fontSize: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Colors.deepPurple, width: 1.5),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: const Icon(Icons.email_outlined),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Enter your email",
                    hintStyle:
                        const TextStyle(color: Colors.black, fontSize: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Colors.deepPurple, width: 1.5),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    prefixIcon: const Icon(Icons.phone_outlined),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Enter your phone number",
                    hintStyle:
                        const TextStyle(color: Colors.black, fontSize: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Colors.deepPurple, width: 1.5),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: wbCall,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 84, 46, 151),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Visibility(
                  visible: visible,
                  child: const CircularProgressIndicator(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
