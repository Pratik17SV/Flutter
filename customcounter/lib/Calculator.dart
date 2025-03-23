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
      title: 'Calculator',
      home: Calculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//==================================================================================

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  int result = 0;
  void add() {
    setState(() {
      result = int.parse(num1.text) + int.parse(num2.text);
    });
  }

  void subtract() {
    setState(() {
      result = int.parse(num1.text) - int.parse(num2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.calculate),
            SizedBox(width: 20),
            Text('Calculator'),
          ],
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: num1,
                decoration: InputDecoration(
                  labelText: 'Enter Number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: num2,
                decoration: InputDecoration(
                  labelText: 'Enter Number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: add,
                    child: Text('+', style: TextStyle(fontSize: 20)),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: subtract,
                    child: Text('-', style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text('The result is:$result'),
            ],
          ),
        ),
      ),
    );
  }
}
