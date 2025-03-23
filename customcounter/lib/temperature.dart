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
      home: TempConveter(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//==================================================================================
//Text area start
class TempConveter extends StatefulWidget {
  const TempConveter({super.key});

  @override
  State<TempConveter> createState() => _TempConveterState();
}

class _TempConveterState extends State<TempConveter> {
  double result = 0;

  //textfield
  TextEditingController Userinput = TextEditingController();
  //Function
  void FtoC() {
    setState(() {
      double F = double.parse(Userinput.text);
      result = (F - 32) * 5 / 9;
    });
  }

  void CtoF() {
    setState(() {
      double C = double.parse(Userinput.text);
      result = (C * 9 / 5) + 32;
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
              controller: Userinput,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Temperature'),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: FtoC, child: Text('F to C')),
                SizedBox(width: 20),
                ElevatedButton(onPressed: CtoF, child: Text('C to F')),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 20),

            Text(result.toString(), style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
