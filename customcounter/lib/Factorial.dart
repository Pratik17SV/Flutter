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
      home: Factorial(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//==================================================================================
//Text area start
class Factorial extends StatefulWidget {
  const Factorial({super.key});

  @override
  State<Factorial> createState() => _FactorialState();
}

class _FactorialState extends State<Factorial> {
  int result = 0;

  void factorialCal() {
    setState(() {
      int num = int.parse(n.text);
      int fac = 1;
      for (int i = 1; i <= num; i++) {
        fac *= i;
      }
      result = fac;
    });
    print(result);
  }

  TextEditingController n = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Factorial')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter a number to calculate its factorial',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              TextField(
                controller: n,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Number for factorial calculation'),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: factorialCal, child: Text('Calculate')),
              SizedBox(height: 20),
              Text('Result: $result'),
            ],
          ),
        ),
      ),
    );
  }
}
