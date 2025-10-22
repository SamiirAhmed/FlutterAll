import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

// ================= Login Screen =================
class LoginScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Halkan waxaad ku dari kartaa login API call
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Login button pressed")),
                );
              },
              child: Text("Login"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgetPassword()),
                );
              },
              child: Text("Forget Password?"),
            ),
          ],
        ),
      ),
    );
  }
}

// ================= Forget Password Screen =================
class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final emailController = TextEditingController();

  void sendResetLink() async {
    var url = Uri.parse('http://yourdomain.com/forget_password.php');
    var response = await http.post(url, body: {
      'email': emailController.text,
    });

    var data = jsonDecode(response.body);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(data['message'])),
    );

    if (data['status'] == 'success') {
      // Haddii la diro link, user-ga u gudbi screen Reset Password
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ResetPassword(token: "dummy_token_here")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forget Password")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Enter your email"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: sendResetLink,
              child: Text("Send Reset Link"),
            ),
          ],
        ),
      ),
    );
  }
}

// ================= Reset Password Screen =================
class ResetPassword extends StatefulWidget {
  final String token;
  ResetPassword({required this.token});

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final passwordController = TextEditingController();

  void updatePassword() async {
    var url = Uri.parse('http://yourdomain.com/reset_password.php');
    var response = await http.post(url, body: {
      'token': widget.token,
      'password': passwordController.text,
    });

    var data = jsonDecode(response.body);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(data['message'])),
    );

    if (data['status'] == 'success') {
      Navigator.popUntil(context, (route) => route.isFirst); // Dib ugu noqo Login screen
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reset Password")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: "Enter new password"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: updatePassword,
              child: Text("Update Password"),
            ),
          ],
        ),
      ),
    );
  }
}
