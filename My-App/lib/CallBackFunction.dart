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
      home: const MyHomePage(title: 'Flutter CallBack Function...'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

CallBack() {
  //Callback Function
  print("ElevatedButton Button Clicked..."); // Function Definition
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Flutter CallBack Function..."), // AppBar Title
      ),
      body: Center(
        // Center Widget
        child: ElevatedButton(
          // Elevated Button Widget
          child: Text("Click Here..."), // Button Text
          onPressed: CallBack, // Calling Callback Function
        ),
      ),
    );
  }
}
