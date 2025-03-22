import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List names = ['Pratik', 'Sanjay', 'Maruti'];
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //Remove the banner in the nav on top right

      home: Scaffold(
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) => ListTile(title: Text(names[index])),
        ),
      ),
    );
  }
}
