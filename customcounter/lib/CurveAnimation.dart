import 'package:customcounter/Ontap.dart';
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
      title: 'Fade in Image',
      home: curveEffect(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//==================================================================================
class curveEffect extends StatefulWidget {
  const curveEffect({super.key});

  @override
  State<curveEffect> createState() => _curveEffectState();
}

class _curveEffectState extends State<curveEffect> {
  Color selectedcolor = Colors.red;
  double Sheight = 200;
  double Swidth = 200;

  void changeColor() {
    setState(() {
      if (selectedcolor == Colors.red) {
        selectedcolor = Colors.yellow;
        Sheight = 300;
        Swidth = 300;
        Curves.easeInOut;
      } else {
        selectedcolor = Colors.red;
        Sheight = 200;
        Swidth = 200;
        Curves.easeInOutCubic;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curve Animation'),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: AnimatedContainer(
          height: Sheight,
          width: Swidth,
          color: selectedcolor,
          duration: Duration(seconds: 5),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeColor,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
