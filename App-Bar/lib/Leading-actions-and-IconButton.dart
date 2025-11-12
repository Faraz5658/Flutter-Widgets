import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
          title: const Text(
            'Leading & Actions',
            style: TextStyle(color: Colors.blueAccent),
          ),
          actions: [
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
        body: const Center(child: Text('Hello, AppBar!')),
      ),
    );
  }
}
