import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? selectedCity;
  List<String> cities = ['Mogadishu', 'Hargeisa', 'Garowe', 'Kismaayo'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Dropdown Example')),
        body: Center(
          child: DropdownButton<String>(
            hint: Text('Select City'),
            value: selectedCity,
            items: cities.map((city) {
              return DropdownMenuItem(
                value: city,
                child: Text(city),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedCity = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
