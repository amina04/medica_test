import 'package:flutter/material.dart';
import 'package:medica/controller/fonctions_calculs.dart';
import '../constantes.dart';
import 'package:medica/controller/calcul_step1_controller.dart';

class Step3 extends StatefulWidget {
  @override
  _Step3State createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  double dose = Dose_a_administrer();
  double volume = Volume_finale();
  int nbr_flacon = Nbr_flacon(volume_flacon: 26.3);
  double reliquat = Reliquat(volume_flacon: 26.3);
  int poche = ChoisirPoche(cmax: 10, cmin: 1);
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
            Text("$dose", style: klabelresultatStyle),
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
            Text("$volume", style: klabelresultatStyle),
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
            Text("$nbr_flacon", style: klabelresultatStyle),
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
            Text("$reliquat", style: klabelresultatStyle),
            SizedBox(
              width: 20.0,
            ),
            Text('ml', style: klabelresultatStyle),
          ],
        ),
        SizedBox(
          height: 40.0,
        ),
        SizedBox(
          height: 40.0,
        ),
        Row(
          children: <Widget>[
            Text('Type de poche :', style: klabelTextStyle),
            SizedBox(
              width: 20.0,
            ),
            Text("$poche", style: klabelresultatStyle),
            SizedBox(
              width: 20.0,
            ),
            Text('ml', style: klabelresultatStyle),
          ],
        ),
        SizedBox(
          height: 40.0,
        ),
        RaisedButton(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15.0),
            color: Colors.lightBlueAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Text(
              "sauvegarder",
              style: kbuttonTextStyle,
            ),
            onPressed: () {
              // print(DateTime.now());
            }),
      ],
    );
  }
}
