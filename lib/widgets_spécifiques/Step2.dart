import 'package:flutter/material.dart';
import '../constantes.dart';
import 'package:medica/widgets_sp%C3%A9cifiques/TextFieldmedica.dart';

class Step2 extends StatefulWidget {
  @override
  _Step2State createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  int height = 180;
  int weight = 60;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // TODO: create a dropdown menu from a data base
        DropdownButton<String>(items: null, onChanged: null),
        SizedBox(
          height: 15.0,
        ),
        Textfieldmedica(label: 'Posologie'),
        SizedBox(
          height: 15.0,
        ),
        Textfieldmedica(label: 'Réduction'),
        SizedBox(
          height: 15.0,
        ),
        Row(
          children: <Widget>[
            Text(
              'Sélectionner la poche ',
              style: klabelTextStyle,
            ),
            SizedBox(
              width: 10.0,
            ),
            // TODO: create a dropdown menu from a data base
            DropdownButton<String>(items: null, onChanged: null),
          ],
        ),
      ],
    );
  }
}
