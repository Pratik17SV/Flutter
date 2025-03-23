import 'package:customcounter/Ontap.dart';
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
    return MaterialApp(
      title: 'Quize',
      home: navgation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//==================================================================================

class navgation extends StatefulWidget {
  const navgation({super.key});

  @override
  State<navgation> createState() => _navgationState();
}

class _navgationState extends State<navgation> {
  //Answer
  int answer = 0;
  //number of Question
  int? Q1;
  int? Q2;
  int? Q3;
  void displayResult() {
    setState(() {
      //code
      if (Q1 == 2) {
        answer = answer + 5;
      }
      if (Q2 == 1) {
        answer = answer + 5;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quize App')),
      body: Column(
        children: [
          //Question 1
          //==============================================================================
          Text(
            "Which tag is used to Display image in HTML",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          RadioListTile(
            title: Text('<image>'),
            value: 1,
            groupValue: Q1,
            onChanged: (value) {
              Q1 = value as int;
            },
          ),
          SizedBox(height: 20),
          RadioListTile(
            title: Text('<img>'),
            value: 2,
            groupValue: Q1,
            onChanged: (value) {
              Q1 = value as int;
            },
          ),
          SizedBox(height: 30),
          //Question 2
          //==============================================================================
          Text(
            "Which tag is not used to Display image in HTML",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          RadioListTile(
            title: Text('<image>'),
            value: 1,
            groupValue: Q1,
            onChanged: (value) {
              Q2 = value!;
            },
          ),
          SizedBox(height: 20),
          RadioListTile(
            title: Text('<img>'),
            value: 2,
            groupValue: Q1,
            onChanged: (value) {
              Q2 = value!;
            },
          ),
          SizedBox(height: 30),
          ElevatedButton(onPressed: displayResult, child: Text('Submit')),
          SizedBox(height: 30),
          Text('Your Answer is $answer', style: TextStyle(fontSize: 50)),
        ],
      ),
    );
  }
}
