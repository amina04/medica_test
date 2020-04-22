import 'package:flutter/material.dart';
import 'constantes.dart';

//pour ne pas chaque fois cree texte field avec son style w ray7in nakhadmo bih bzf dert
// had style wmb3d twli t3aytilo comme une widget w takatbi le nom brk lel prprite label
class Textfieldmedica extends StatelessWidget {
  Textfieldmedica({@required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: klabelTextStyle,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent, width: 2.0)),
        border: OutlineInputBorder(),
        labelText: label,
      ),
    );
  }
}
