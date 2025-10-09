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
      home: const MyHomePage(title: 'Flutter Image Asset Example'),
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
      body: Container(
        //Container Widget
        padding: EdgeInsets.all(20),
        child: Column(
          //Column Widget
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              //Row Widget
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("R", style: TextStyle(fontSize: 20)),
                Text("O", style: TextStyle(fontSize: 20)),
                Text("W", style: TextStyle(fontSize: 20)),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Row Button"),
                ), //Elevated Button
              ],
            ),

            Text("C", style: TextStyle(fontSize: 20)),
            Text("O", style: TextStyle(fontSize: 20)),
            Text("L", style: TextStyle(fontSize: 20)),
            Text("U", style: TextStyle(fontSize: 20)),
            Text("M", style: TextStyle(fontSize: 20)),
            Text("N", style: TextStyle(fontSize: 20)),

            ElevatedButton(
              onPressed: () {},
              child: Text("Column Button"),
            ), //Elevated Button
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
