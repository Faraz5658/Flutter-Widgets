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
      home: const MyHomePage(title: 'Flutter Row Flexible Example'),
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
    var arrName = [
      "Amit",
      "Sumit",
      "Sourav",
      "Pratik",
      "Ankit",
      "Deepak",
      "Rohit",
      "Sonu",
      "Monu",
      "Vikas",
      "Pankaj",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(child: Text("Mini Practice Task")),
      ),
      body: ListView.builder(
        itemCount: arrName.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.amber),
              title: Text(arrName[index]),
              subtitle: Text("This is subtitle of ${arrName[index]}"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),
    );
  }
}
