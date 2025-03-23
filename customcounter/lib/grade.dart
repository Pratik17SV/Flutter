import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Counter',
      home: Grade(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//==================================================================================

//grade acalculator
class Grade extends StatefulWidget {
  const Grade({super.key});

  @override
  State<Grade> createState() => _GradeState();
}

class _GradeState extends State<Grade> {
  String? grade;

  TextEditingController mObtain = TextEditingController();
  TextEditingController totalM = TextEditingController();

  void calGrade() {
    setState(() {
      double percent =
          (double.parse(mObtain.text) / double.parse(totalM.text)) * 100;
      switch (percent) {
        case 90.0:
          grade = 'A';
          break;
        case 80.0:
          grade = 'B';
          break;
        case 70.0:
          grade = 'C';
          break;
        case 60.0:
          grade = 'D';
          break;
        default:
          grade = 'F';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grader')),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: mObtain,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Marks Obtain'),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: totalM,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Total Marks'),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: calGrade, child: Text('Calculate grade')),
            SizedBox(height: 20),
            Text('Your grade is: $grade'),
          ],
        ),
      ),
    );
  }
}
