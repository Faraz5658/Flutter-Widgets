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
        title: Center(child: Text("Splitting Widgets")),
      ),
      body: Column(
        children: [
          CatItem(), //Call the function
          About(), //Call the function
          Contact(), //Call the function
          Subcontact(), //Call the function
        ],
      ),
    );
  }
}

//Create a stateless widget
class CatItem extends StatelessWidget {
  // call the fuction CatItem
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.red,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 11, 9, 15),
              ),
            ),
          ),
          itemCount: 15,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  // call the fuction About
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.green,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Person "),
              subtitle: Text("Subtitle"),
              trailing: Icon(Icons.delete),
            ),
          ),
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  // call the fuction Contact
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: const Color.fromARGB(255, 128, 95, 93),
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          itemCount: 15,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class Subcontact extends StatelessWidget {
  // call the fuction Subcontact
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.yellow,
        child: GridView.count(
          crossAxisCount: 4,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 116, 95, 120),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 229, 218, 16),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 19, 38, 244),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 12, 255, 49),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
