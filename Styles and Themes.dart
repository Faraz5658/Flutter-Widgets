import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Styles and Themes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          headlineSmall: TextStyle(fontSize: 20),
        ),
      ),
      home: const MyHomePage(title: 'Styles and Themes'),
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
      appBar: AppBar(centerTitle: true, title: const Text("Styles and Themes")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("BANGASH", style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 10),
          Text("BANGASH", style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 10),
          Text("BANGASH", style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 10),
          Text("BANGASH", style: Theme.of(context).textTheme.headlineSmall),
        ],
      ),
    );
  }
}
