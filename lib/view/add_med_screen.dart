import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medica/constantes.dart';
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
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: Colors.tealAccent),
                borderRadius: BorderRadius.all(
                    Radius.circular(5.0) //         <--- border radius here
                    ),
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Nom :',
                    textAlign: TextAlign.center,
                    style: klabeladdMedStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldmedica(label: 'Nom de médicament'),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldmedica(label: 'Laboratoire'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: Colors.tealAccent),
                borderRadius: BorderRadius.all(
                    Radius.circular(5.0) //         <--- border radius here
                    ),
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Présentation :',
                    textAlign: TextAlign.center,
                    style: klabeladdMedStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldmedica(label: 'Pésentation'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: Colors.tealAccent),
                borderRadius: BorderRadius.all(
                    Radius.circular(5.0) //         <--- border radius here
                    ),
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Concentration :',
                    textAlign: TextAlign.center,
                    style: klabeladdMedStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldmedica(label: 'C Initiale'),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldmedica(label: 'C Minimale'),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldmedica(label: 'C Maximale'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: Colors.tealAccent),
                borderRadius: BorderRadius.all(
                    Radius.circular(5.0) //         <--- border radius here
                    ),
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Volume aprés péparation :',
                    textAlign: TextAlign.center,
                    style: klabeladdMedStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldmedica(label: 'Volume aprés péparation'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: Colors.tealAccent),
                borderRadius: BorderRadius.all(
                    Radius.circular(5.0) //         <--- border radius here
                    ),
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Prix du mg :',
                    textAlign: TextAlign.center,
                    style: klabeladdMedStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldmedica(label: 'Prix du mg '),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: Colors.tealAccent),
                borderRadius: BorderRadius.all(
                    Radius.circular(5.0) //         <--- border radius here
                    ),
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Stabilités :',
                    textAlign: TextAlign.center,
                    style: klabeladdMedStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldmedica(label: 'Flacon '),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldmedica(label: 'Températeure '),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldmedica(label: 'stabilité'),
                ],
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15.0),
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "sauvegarder",
                style: kbuttonTextStyle,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
