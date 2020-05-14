import 'package:flutter/material.dart';
import 'package:medica/constantes.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class Detail_patient extends StatefulWidget {
  static String id = 'Detail_patient';

  @override
  _Detail_patient createState() => _Detail_patient();
}

class _Detail_patient extends State<Detail_patient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        centerTitle: true,
        title: Text('Détails de Patient ', style: kappBarTextStyle),
        gradient:
            LinearGradient(colors: [Colors.lightBlueAccent, Colors.tealAccent]),
      ),
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Nom et prénom :',
                    style: ktitleliststyle,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Khacha ',
                    style: kresultliststyle,
                  ),
                  Text(
                    'Amina ',
                    style: kresultliststyle,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'La surface coporelle :',
                    style: ktitleliststyle,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '24',
                    style: kresultliststyle,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'La date :',
                    style: ktitleliststyle,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    ' 22/02/2020',
                    style: kresultliststyle,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Text(
                    ' La dose :',
                    style: ksubtitleliststyle,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '0.3 mg/ml',
                    style: kresultliststyle,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Reliquats:',
                    style: ksubtitleliststyle,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '0.75 mg/ml',
                    style: kresultliststyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
