import 'package:flutter/material.dart';

class Settingspage extends StatelessWidget {
  const Settingspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Setting page')),
      body: Center(child: Text('This is seting page.')),
      backgroundColor: Colors.amber,
    );
  }
}
