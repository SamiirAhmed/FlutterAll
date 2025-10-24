import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String output = "0";
  String _expression = "";

  void buttonPressed(String value) {
    setState(() {
      if (value == "C") {
        _expression = "";
        output = "0";
      } else if (value == "=") {
        try {
          output = _calculate(_expression);
          _expression = output;
        } catch (e) {
          output = "Event kuma xirno haisdalin ";
        }
      } else {
        _expression += value;
        output = _expression;
      }
    });
  }

  String _calculate(String expr) {
    try {
      final result = double.parse(
        expr.replaceAll("×", "*").replaceAll("÷", "/"),
      );
      return result.toString();
    } catch (e) {
      return "Event kuma xirno haisdalin";
    }
  }

  Widget buildButton(String text, {Color? color}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? Colors.deepPurple,
          padding: const EdgeInsets.all(24),
        ),
        onPressed: () => buttonPressed(text),
        child: Text(
          text,
          style: const TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          title: const Text("Simple Calculator"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(24),
                child: Text(
                  output,
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(children: [buildButton("7"), buildButton("8"), buildButton("9"), buildButton("÷", color: Colors.orange)]),
            Row(children: [buildButton("4"), buildButton("5"), buildButton("6"), buildButton("×", color: Colors.orange)]),
            Row(children: [buildButton("1"), buildButton("2"), buildButton("3"), buildButton("-", color: Colors.orange)]),
            Row(children: [buildButton("C", color: Colors.red), buildButton("0"), buildButton("=", color: Colors.green), buildButton("+", color: Colors.orange)]),
          ],
        ),
      ),
    );
  }
}
