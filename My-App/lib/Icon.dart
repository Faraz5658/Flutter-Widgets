import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Icon Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyHomePage(title: 'Icon Page'),
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
        title: Text("Icon Page"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(Icons.star, color: Colors.amber, size: 50),
              Icon(Icons.access_alarm, color: Colors.blueAccent, size: 50),
              Icon(
                Icons.phone_android,
                color: Colors.deepPurpleAccent,
                size: 50,
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(Icons.star, color: Color(0xFFA222A2), size: 50),
              Icon(Icons.access_alarm, color: Color(0xFF354664), size: 50),
              Icon(Icons.phone_android, color: Color(0xFF2BB88B), size: 50),
            ],
          ),
        ],
      ),
    );
  }
}
