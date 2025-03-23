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
      home: ElectricGatgets(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//==================================================================================

//ElectricGatgets

class ElectricGatgets extends StatefulWidget {
  const ElectricGatgets({super.key});

  @override
  State<ElectricGatgets> createState() => _ElectricGatgetsState();
}

class _ElectricGatgetsState extends State<ElectricGatgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Electronic Gadegets Store')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to Chorma Click Store button to see the Product:",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Storescreen()),
                  );
                },
                child: Text('Store'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Storescreen extends StatelessWidget {
  const Storescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Store')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is the Product info and Price Page.'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BuyProduct()),
                );
              },
              child: Text('Buy the Product'),
            ),
          ],
        ),
      ),
    );
  }
}

class BuyProduct extends StatelessWidget {
  const BuyProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buy Product')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have successfully bought the product.'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ElectricGatgets()),
                );
              },
              child: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
