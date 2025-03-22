import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

String name = "My name is Pratik";
int age = 5;
double pi = 3.14;
bool isBigner = true;
String grade = 'A';

// //Age condition
// if (age >= 18) {
//   print("You are an adult");
// } else {
//   print("You are a minor");
// }
// =======================================================================
// //Grade
// switch (grade) {
//   case 'A':
//     print("You are in A grade");
//     break;
//   case 'B':
//     print("You are in B grade");
//     break;
//   case 'C':
//     print("You are in C grade");
//     break;
//   default:
//     print("You are in D grade");
//     break;
// }
//==============================================================================
// for (int i = 0; i <= 10; i++) {
//   print(i);
// }
// =============================================================================
// int i = 1;
// while (i <= 10) {
//   print(i);
//   i++;
// }
//==============================================================================
//Basic Function
//no return type function
// void greet() {
//   print("Hello, I am Pratik");
// }

// void greetPerson(String name, int age) {
//   print("Hello, $name");
//   print("The age is: $age");
// }

// //function with return type
// int add(int a, int b) {
//   return a + b;
// }

// =============================================================================
// List all = [0, 'a']; //list all data types
// List<int> number = [1, 2, 3, 4, 5]; //only int
// List<String> names = ['Pratik', 'Nihar']; //Sting list
// void printList() {
//   for (int i = 0; i < number.length; i++) {
//     print(number[i]);
//   }
//   for (int i = 0; i < names.length; i++) {
//     print(names[i]);
//   }
// }
//==============================================================================

// Set <int> numbers = {1, 2, 3, 4, 5};//stores all unique values and random displayed

//==============================================================================

// Map user = {'name': 'Pratik', 'age': 20, 'city': 'Pune'};//key value pair

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
