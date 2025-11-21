import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Date Picker Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyHomePage(title: 'Flutter Date Picker Demo'),
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
        title: Text("Date Picker Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, //main axis alignment means center the column
          children: [
            Text(
              "Select Date",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              // Date Picker Button
              onPressed: () async {
                // async means the function is asynchronous
                DateTime? datePicker = await showDatePicker(
                  // await means to wait for the result
                  context: context,
                  initialDate: DateTime.now(), // current date
                  firstDate: DateTime(2003), // earliest date
                  lastDate: DateTime(2026), // latest date
                );
                if (datePicker != null) {
                  print(
                    'Selected Date: ${datePicker.year}-${datePicker.month}-${datePicker.day}',
                  );
                }
              },
              child: Text("Select Date"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              // Time Picker Button
              onPressed: () async {
                TimeOfDay? timePicker = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(), // current time
                  initialEntryMode: TimePickerEntryMode.input, // input mode
                );
                if (timePicker != null) {
                  print('Selected Time: ${timePicker.format(context)}');
                }
              },
              child: Text('Select Time'),
            ),
          ],
        ),
      ),
    );
  }
}
