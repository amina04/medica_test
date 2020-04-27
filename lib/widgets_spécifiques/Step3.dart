import 'package:flutter/material.dart';
import '../constantes.dart';

class Step3 extends StatefulWidget {
  @override
  _Step3State createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  int height = 180;
  int weight = 60;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('La dose adminitré :', style: klabelTextStyle),
            SizedBox(
              width: 20.0,
            ),
            Text('1522', style: klabelresultatStyle),
            SizedBox(
              width: 20.0,
            ),
            Text('mg', style: klabelresultatStyle),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          children: <Widget>[
            Text('Volume finale :', style: klabelTextStyle),
            SizedBox(
              width: 20.0,
            ),
            Text('1522', style: klabelresultatStyle),
            SizedBox(
              width: 20.0,
            ),
            Text('ml', style: klabelresultatStyle),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          children: <Widget>[
            Text('Composé de :', style: klabelTextStyle),
            SizedBox(
              width: 20.0,
            ),
            Text('1522', style: klabelresultatStyle),
            SizedBox(
              width: 20.0,
            ),
            Text('flacons', style: klabelresultatStyle),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          children: <Widget>[
            Text('Relicat :', style: klabelTextStyle),
            SizedBox(
              width: 20.0,
            ),
            Text('1522', style: klabelresultatStyle),
            SizedBox(
              width: 20.0,
            ),
            Text('ml', style: klabelresultatStyle),
          ],
        ),
      ],
    );
  }
}
