import 'package:examtestapp/Home.dart';
import 'package:examtestapp/Settings.dart';
import 'package:examtestapp/first_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
      routes: {
        '/home': (context) => Homepage(),
        '/setting': (context) => Settingspage(),
      },
    );
  }
}
