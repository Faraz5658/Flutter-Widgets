import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Grid Layout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyHomePage(title: 'Flutter Grid Layout Example'),
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
    var arrColors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.orange,
      Colors.purple,
      Colors.pink,
      Colors.brown,
      Colors.cyan,
      Colors.indigo,
      Colors.lime,
      Colors.teal,
      Colors.amberAccent,
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("This is Grid Layout"),
      ),

      // Whole page scrollable
      body: SingleChildScrollView(
        child: Column(
          children: [
            // FIRST GRID
            SizedBox(
              height: 300,
              child: GridView.count(
                crossAxisCount: 7,
                mainAxisSpacing: 11,
                crossAxisSpacing: 11,
                children: arrColors.map((c) => Container(color: c)).toList(),
              ),
            ),

            const SizedBox(height: 20),

            // SECOND GRID
            SizedBox(
              height: 300,
              child: GridView.extent(
                maxCrossAxisExtent: 100,
                mainAxisSpacing: 11,
                crossAxisSpacing: 11,
                children: arrColors.map((c) => Container(color: c)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
