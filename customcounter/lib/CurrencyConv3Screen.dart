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
      title: 'Color Changer',
      home: Bottomnav(),
      routes: {
        '/home': (context) => Home(),
        '/setting': (context) => currency(),
        '/profile': (context) => Setting(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

//==================================================================================

//ElectricGatgets
class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int selectedIndex = 0;

  List Screens = [Home(), currency(), Setting()];

  void navigateBottomnavbar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[selectedIndex],
      backgroundColor: Colors.blue,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: navigateBottomnavbar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_rupee),
            label: 'CurrencyConveter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

//Home
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Home page")));
  }
}

//Currnecy conveter
class currency extends StatefulWidget {
  const currency({super.key});

  @override
  State<currency> createState() => _currencyState();
}

class _currencyState extends State<currency> {
  final TextEditingController amount = TextEditingController();
  double converted = 0;
  void Converter() {
    setState(() {
      //Here you can put your conversion logic
      converted = double.parse(amount.text) / 80.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Currnncy page")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('The converted amount is $converted'),
              SizedBox(height: 20),
              TextField(
                controller: amount,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Enter in rupees'),
                  icon: Icon(Icons.currency_rupee_sharp),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: Converter,
                child: Text('Convert to Rupees'),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Setting', style: TextStyle(fontSize: 50))],
        ),
      ),
    );
  }
}
