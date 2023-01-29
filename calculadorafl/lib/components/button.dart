import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Button extends StatelessWidget {
  final String text;

  Button({required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        child: Text(text, style: TextStyle(fontSize: 40),),
      ),
    );
  }
}
