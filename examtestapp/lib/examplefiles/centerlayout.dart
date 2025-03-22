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
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
            padding: EdgeInsets.all(50),
            child: Text(
              "This is text Widgit.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
