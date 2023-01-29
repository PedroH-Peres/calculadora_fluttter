import 'package:calculadorafl/components/display.dart';
import 'package:calculadorafl/components/keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Display('132.7'),
          Keyboard()
        ],
      ),
    );
  }
}
