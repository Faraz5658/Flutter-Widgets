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
    var arrNames = [
      "ALI",
      "AHMED",
      "HASSAN",
      "HUSSAIN",
      "SAAD",
      "SAIF",
      "FARAZ",
    ];
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Row and Column Widget"),
      ),
      body: ListView.separated(
       itemBuilder: (contet,index){
        return  Text(
          arrNames[index],
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700)
        )
        
       },
       itemCount: arrNames.length,
       separatorBuilder: (context, index){
        return Divider(height: 50,)
       },
      )

      // ListView.builder(
      //   itemBuilder: (context, index) {
      //     return Text(
      //       arrNames[index],
      //       style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
      //     );
      //   },
      //   itemCount: arrNames.length,
      //   itemExtent: 200,
      // ),
    );
  }
}
