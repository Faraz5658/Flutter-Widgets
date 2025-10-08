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
      appBar: AppBar(title: Text(widget.title)),
      body: OutlinedButton(
        child: Text("Click Here..."),
        onPressed: () {
          print("OutlinedButton Clicked...");
        },
        onLongPress: () {
          print("OutlinedButton Long Pressed...");
        },
      ),
      //  ElevatedButton(
      //   child: Text("Click Here..."),
      //   onPressed: () {
      //     print("ElevatedButton Clicked...");
      //   },
      //   onLongPress: () {
      //     print("ElevatedButton Long Pressed...");
      //   },
      // ),

      // TextButton(
      //   child: Text("Click Here..."),
      //   onPressed: () {
      //     print("Button Clicked...");
      //   },
      //   onLongPress: () {
      //     print("Button Long Pressed...");
      //   },
      // ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
