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
      home: Textarea(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//==================================================================================
//Text area start
class Textarea extends StatefulWidget {
  const Textarea({super.key});

  @override
  State<Textarea> createState() => _TextareaState();
}

class _TextareaState extends State<Textarea> {
  //total
  int total = 0;

  //text field controller
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  //Function for addation
  void add() {
    setState(() {
      total = int.parse(num1.text) + int.parse(num2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.check), title: Text('Add 2 number')),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: num1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('number2'),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: num2,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('number2'),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: add, child: Text('Add')),
            SizedBox(height: 20),
            Text(total.toString(), style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
