import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Styling: color, elevation, text style...',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          elevation: 20.0,
          toolbarHeight: 70.0,
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Color, Elevation, Text Style!',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
