import 'package:flutter/material.dart';
import 'package:medica/constantes.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class Detail_med extends StatefulWidget {
  static String id = 'Detail_med';

  @override
  _Detail_med createState() => _Detail_med();
}

class _Detail_med extends State<Detail_med> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Détails de médicament ', style: kappBarTextStyle),
        gradient:
            LinearGradient(colors: [Colors.lightBlueAccent, Colors.tealAccent]),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Text(
                    'Présentation :',
                    style: ktitleliststyle,
                  ),
                  Text(
                    'Flacon de 20mg/1ml ',
                    style: kresultliststyle,
                  ),
                  Text(
                    'Flacon de 80mg/4ml ',
                    style: kresultliststyle,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 70),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Text(
                    'Concentration :',
                    style: ktitleliststyle,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        ' initiale :',
                        style: ksubtitleliststyle,
                      ),
                      Text(
                        '20 mg/ml',
                        style: kresultliststyle,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        ' minimale :',
                        style: ksubtitleliststyle,
                      ),
                      Text(
                        '0.3 mg/ml',
                        style: kresultliststyle,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        ' maximale :',
                        style: ksubtitleliststyle,
                      ),
                      Text(
                        '0.75 mg/ml',
                        style: kresultliststyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Text(
                    ' Volume après préparation :',
                    style: ktitleliststyle,
                  ),
                  Text(
                    '20 ml',
                    style: kresultliststyle,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Text(
                    ' Prix du mg :',
                    style: ktitleliststyle,
                  ),
                  Text(
                    '100 DA',
                    style: kresultliststyle,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Text(
                    ' Stabilités :',
                    style: ktitleliststyle,
                  ),
                  Text(
                    'flacon en verre  + (Température = 4°C):',
                    style: ksubtitleliststyle,
                  ),
                  Text(
                    ' 48 heures',
                    style: kresultliststyle,
                  ),
                  Text(
                    'flacon en verre  + (Température = 25°C):',
                    style: ksubtitleliststyle,
                  ),
                  Text(
                    ' 8 heures',
                    style: kresultliststyle,
                  ),
                  Text(
                    'flacon en PVC  + (Température = 25°C):',
                    style: ksubtitleliststyle,
                  ),
                  Text(
                    ' 72 heures',
                    style: kresultliststyle,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.lightBlueAccent,
                  padding: EdgeInsets.symmetric(horizontal: 23, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    "modifier",
                    style: kbuttonTextStyle,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 20.0,
                ),
                RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15.0),
                  color: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    "supprimer",
                    style: kbuttonTextStyle,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
