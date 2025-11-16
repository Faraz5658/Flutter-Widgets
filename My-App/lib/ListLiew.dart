import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Liew Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyHomePage(title: 'List Liew Page'),
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
        title: Text("List Liew Page"),
      ),
      body:
          // ListView Simple
          // ListView(
          //   children: [
          //     Text("ONE"),
          //     Text("TWO"),
          //     Text("THREE"),
          //     Text("FOUR"),
          //     Text("FIVE"),
          //     Text("SIX"),
          //   ],
          // ),
          //ListView Builder
          // ListView.builder(
          //   itemCount: 7,
          //   itemBuilder: (context, index) {
          //     return Text("Item $index");
          //   },
          // ),
          // ListView separated
          ListView.separated(
            itemCount: 7,
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              return Text('TEXT NO $index');
            },
          ),
    );
  }
}
