import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _selectedValue = "Green";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Radio Button Create'),
        ),
        body: Column(
          children: [
            ListTile(
              title: const Text("Green"),
              leading: Radio<String>(
                value: "Green",
                groupValue: _selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    _selectedValue = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("Orange"),
              leading: Radio<String>(
                value: "Orange",
                groupValue: _selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    _selectedValue = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("Amber"),
              leading: Radio<String>(
                value: "Amber",
                groupValue: _selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    _selectedValue = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("Green Accent"),
              leading: Radio<String>(
                value: "Green Accent",
                groupValue: _selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    _selectedValue = value!;
                  });
                },
              ),
            ),
            const SizedBox(height: 24,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 50,
              decoration: BoxDecoration(
                  color: _selectedValue == "Green" ? Colors.green : _selectedValue == "Orange" ? Colors.orange : _selectedValue == "Amber" ? Colors.amber : Colors.greenAccent,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Center(
                child: Text(_selectedValue, style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
