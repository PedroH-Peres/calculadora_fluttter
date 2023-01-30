import 'package:calculadorafl/components/button.dart';
import 'package:calculadorafl/components/button_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Keyboard extends StatelessWidget {

  final void Function(String) cb;

  Keyboard(this.cb);

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
                Button(text: 'AC', color: Button.DARK, big: true, cb: cb,),
                Button(text: '%', color: Button.DARK, cb: cb,),
                Button(text: '/',color: Button.OPERATION, cb: cb,),
              ],
            ),
            SizedBox(height: 1,),
            ButtonRow(
              [
                Button(text: '9', cb: cb,),
                Button(text: '8', cb: cb,),
                Button(text: '7', cb: cb,),
                Button(text: 'x', color: Button.OPERATION, cb: cb,),
              ],
            ),
            SizedBox(height: 1,),
            ButtonRow(
              [
                Button(text: '6', cb: cb,),
                Button(text: '5', cb: cb,),
                Button(text: '4', cb: cb,),
                Button(text: '-', color: Button.OPERATION, cb: cb,),
              ],
            ),
            SizedBox(height: 1,),
            ButtonRow(
              [
                Button(text: '3', cb: cb,),
                Button(text: '2', cb: cb,),
                Button(text: '1', cb: cb,),
                Button(text: '+', color: Button.OPERATION, cb: cb,),
              ],
            ),
            SizedBox(height: 1,),
            ButtonRow(
              [
                Button(text: '0', big: true, cb: cb,),
                Button(text: ',', cb: cb,),
                Button(text: '=',color: Button.OPERATION, cb: cb,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
