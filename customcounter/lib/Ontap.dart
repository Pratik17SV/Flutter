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
      title: 'Color Changer',
      home: onTap(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//==================================================================================

//grade acalculator
class onTap extends StatefulWidget {
  const onTap({super.key});

  @override
  State<onTap> createState() => _onTapState();
}

Color color = Colors.red;

class _onTapState extends State<onTap> {
  void colorChanger() {
    setState(() {
      if (color == Colors.red) {
        color = Colors.yellow;
        return;
      } else if (color == Colors.yellow) {
        color = Colors.red;
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: colorChanger,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Colorchanger'),
          backgroundColor: Colors.white,
        ),
        body: Center(child: Text('TAP ME!')),
        backgroundColor: color,
      ),
    );
  }
}
