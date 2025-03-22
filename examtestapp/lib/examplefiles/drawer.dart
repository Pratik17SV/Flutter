import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First screen')),
      backgroundColor: Colors.blue,
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 100, 71, 216),
        child: Column(
          children: [
            DrawerHeader(
              child: Text('Nav bar', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: const Color.fromARGB(255, 126, 126, 126),
              ),
              textColor: Colors.white,
              title: Text('Home'),
              onTap: () {
                //GO to home page
                Navigator.pushReplacementNamed(context, '/home');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: const Color.fromARGB(255, 126, 126, 126),
              ),
              textColor: Colors.white,
              title: Text('Setting'),
              onTap: () {
                //GO to home page
                Navigator.pushReplacementNamed(context, '/setting');
              },
            ),
          ],
        ),
      ),
    );
  }
}
