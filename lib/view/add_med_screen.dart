import 'package:flutter/material.dart';
import 'package:medica/widgets_sp%C3%A9cifiques/TextFieldmedica.dart';

class Add_med extends StatefulWidget {
  static String id = 'Add_med';

  @override
  _Add_med createState() => _Add_med();
}

class _Add_med extends State<Add_med> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Textfieldmedica(label: 'Nom de médicament'),

            ],
          ),
        ),
      ),
    );
  }
}
