import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //Remove the banner in the nav on top right
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('My First App', style: TextStyle(color: Colors.white)),
          leading: Icon(Icons.menu),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(height: 200, width: 20, color: Colors.red),

            Container(
              height: 200,
              width: 20,
              color: const Color.fromARGB(255, 146, 63, 57),
            ),

            Container(
              height: 200,
              width: 20,
              color: const Color.fromARGB(255, 229, 134, 127),
            ),
          ],
        ),
      ),
    );
  }
}
