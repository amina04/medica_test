import 'package:flutter/material.dart';
import 'package:medica/controller/calcul_step2_controller.dart';
import '../constantes.dart';
import 'package:medica/widgets_sp%C3%A9cifiques/TextFieldmedica.dart';

class Step2 extends StatefulWidget {
  @override
  _Step2State createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // TODO: create a dropdown menu from a data base for medication
        Row(
          children: <Widget>[
            Text(
              'Le médicament: ',
              style: klabelTextStyle,
            ),
            SizedBox(
              width: 10.0,
            ),
            DropdownButton<String>(items: null, onChanged: null),
          ],
        ),

        SizedBox(
          height: 15.0,
        ),
        Textfieldmedica(
          label: 'Posologie',
          controller: posologie_ctrl,
        ),
        SizedBox(
          height: 15.0,
        ),
        Textfieldmedica(
          label: 'Réduction',
          controller: reduction_ctrl,
        ),
        SizedBox(
          height: 15.0,
        ),
        Row(
          children: <Widget>[
            // TODO:  drop down du presentation va remplis automatiquement quand on choisit le médicament
            Text(
              'Présentation : ',
              style: klabelTextStyle,
            ),
            SizedBox(
              width: 10.0,
            ),
            DropdownButton<String>(items: null, onChanged: null),
          ],
        ),
      ],
    );
  }
}
