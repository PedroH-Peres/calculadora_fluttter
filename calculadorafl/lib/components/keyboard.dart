import 'package:calculadorafl/components/button.dart';
import 'package:calculadorafl/components/button_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Keyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        height: 500,
        child: Column(
          children: [
            ButtonRow(
              [
                Button(text: 'AC', big: true,),
                Button(text: '%',color: Button.OPERATION),
                Button(text: '/',color: Button.OPERATION),
              ],
            ),
            ButtonRow(
              [
                Button(text: '9'),
                Button(text: '8'),
                Button(text: '7'),
                Button(text: 'x', color: Button.OPERATION),
              ],
            ),
            ButtonRow(
              [
                Button(text: '6'),
                Button(text: '5'),
                Button(text: '4'),
                Button(text: '-', color: Button.OPERATION),
              ],
            ),
            ButtonRow(
              [
                Button(text: '3'),
                Button(text: '2'),
                Button(text: '1'),
                Button(text: '+', color: Button.OPERATION),
              ],
            ),
            ButtonRow(
              [
                Button(text: '0', big: true,),
                Button(text: ','),
                Button(text: '=',color: Button.OPERATION),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
