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
    List names = ['Pratik', 'Sanjay', 'Maruti'];
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //Remove the banner in the nav on top right

      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              Usertap();
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              child: Center(
                child: Text('Tape me!', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
