import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Custom function for on tap event
  void Usertap() {
    print('User tapped');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //Remove the banner in the nav on top right

      home: Scaffold(),
    );
  }
}
