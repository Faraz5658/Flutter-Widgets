import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(" THIS IS STACK WIDGET"),
      ),
      body: Container(
        width: 300,
        height: 300,
        child: Stack(
          children: [
            Container(width: 300, height: 300, color: Colors.red),
            Container(width: 250, height: 250, color: Colors.green),
            Container(width: 200, height: 200, color: Colors.blue),
            Container(
              width: 200,
              height: 200,
              color: const Color.fromARGB(255, 31, 43, 53),
            ),
          ],
        ),
      ),
    );
  }
}
