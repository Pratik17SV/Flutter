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
      home: FadeINanimation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//==================================================================================
class FadeINanimation extends StatefulWidget {
  const FadeINanimation({super.key});

  @override
  State<FadeINanimation> createState() => _FadeINanimationState();
}

class _FadeINanimationState extends State<FadeINanimation> {
  String url =
      'https://www.bankrate.com/brp/2025/02/06145605/elon-musk-2025-worlds-richest-person.jpg';

  double opacitylevel = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fade in Animation')),
      body: Column(
        children: [
          Image.network(url),
          ElevatedButton(
            onPressed: () {
              setState(() {
                opacitylevel = 1.0;
              });
            },
            child: Text('Info'),
          ),
          AnimatedOpacity(
            opacity: opacitylevel,
            duration: Duration(seconds: 3),
            child: Column(
              children: [
                Text(
                  'Elon Musk \nThe richest person in the world \nHe is the CEO of SpaceX',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
