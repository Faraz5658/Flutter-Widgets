import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Get Current Date Time Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyHomePage(title: 'Flutter Get Current Date Time Example'),
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
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("THIS IS GET CURRENT DATE TIME"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 800,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                // Current Date
                'Current Date: ${time.day}-${time.month}-${time.year}',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.deepPurple,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text("Get Current Date"),
              ),
              Text(
                //Current Time
                'Current Time: ${time.hour}:${time.minute}:${time.second}:${time.millisecond}',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.deepPurple,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text("Get Current Time"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
