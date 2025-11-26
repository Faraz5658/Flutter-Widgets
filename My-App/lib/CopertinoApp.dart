import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyCupertinoApp());
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Cupertino App Demo',
      debugShowCheckedModeBanner: false,
      home: CupertinoHomePage(),
    );
  }
}

class CupertinoHomePage extends StatelessWidget {
  const CupertinoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Cupertino Design UI"),
      ),
      child: const Center(
        child: Text(
          "This is Cupertino Design UI",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
