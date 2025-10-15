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
      home: const MyHomePage(title: 'Card Widget'),
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
    var arrNames = [
      "ALI",
      "AHMED",
      "HASSAN",
      "HUSSAIN",
      "SAAD",
      "SAIF",
      "FARAZ",
      "UMER",
      "KASHIF",
      "KASHAN",
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(" Card Widget"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/woman.png'),
              ),
              title: Text(
                arrNames[index],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text("Number : $index"),
              trailing: const Icon(Icons.add),
            ),
          );
        },
        itemCount: arrNames.length,
        separatorBuilder: (context, index) => const SizedBox(height: 5),
      ),
      // body: ListView.separated(
      //   itemBuilder: (context, index) {
      //     return Card(
      //       elevation: 4,
      //       margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      //       child: ListTile(
      //         leading: const Icon(Icons.person, color: Colors.deepPurple),
      //         title: Text(
      //           arrNames[index],
      //           style: const TextStyle(
      //             fontSize: 20,
      //             fontWeight: FontWeight.w600,
      //           ),
      //         ),
      //         subtitle: Text("Index: $index"),
      //         trailing: const Icon(Icons.add),
      //       ),
      //     );
      //   },
      //   itemCount: arrNames.length,
      //   separatorBuilder: (context, index) => const SizedBox(height: 5),
      // ),
    );
  }
}
