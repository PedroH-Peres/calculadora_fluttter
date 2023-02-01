import 'package:calculadorafl/screens/calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora Playyy',
      theme: ThemeData( 
        primarySwatch: Colors.blue,
      ),
      home: Container(),
    );
  }
}

