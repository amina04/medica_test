import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:medica/constantes.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:medica/controller/add_med_controller.dart';
import 'package:medica/model/database.dart';
import 'package:medica/model/model_tableaux/medicament.dart';
import 'package:medica/view/list_med_screen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:medica/main.dart';

import 'add_med_screen.dart';

class Detail_med extends StatefulWidget {
  static String id = 'Detail_med';

  @override
  State<StatefulWidget> createState() {
    return _Detail_med();
  }
}

class _Detail_med extends State<Detail_med> {
  var dbmanager = new Dbmedica();
//remplir les variable apartir de variable meds qui est de type medicament qui est initialiser dans list med screen
  String nom_medicament = med_det.nom;
  double volume_flcn = med_det.volume_flacon;
  double qte_disponible = med_det.qte_disponible;
  // TODO:remplir les autres a partire tableau med_detail
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GradientAppBar(
        centerTitle: true,
        title: Text('Détails de médicament ', style: kappBarTextStyle),
        gradient:
            LinearGradient(colors: [Colors.lightBlueAccent, Colors.tealAccent]),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20),
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  ' Nom de médicament :',
                  style: klabeladdMedStyle,
                ),
                Text(
                  "$nom_medicament",
                  style: kresultliststyle,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Présentation :',
                  style: klabeladdMedStyle,
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
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Volume de flacon :',
                  style: klabeladdMedStyle,
                ),
                Text(
                  '$volume_flcn',
                  style: kresultliststyle,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Quantité disponible :',
                  style: klabeladdMedStyle,
                ),
                Text(
                  '$qte_disponible',
                  style: kresultliststyle,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 70),
            child: Column(
              children: <Widget>[
                Text(
                  'Concentration :',
                  style: klabeladdMedStyle,
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
            child: Column(
              children: <Widget>[
                Text(
                  ' Volume après préparation :',
                  style: klabeladdMedStyle,
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
            child: Column(
              children: <Widget>[
                Text(
                  ' Prix du mg :',
                  style: klabeladdMedStyle,
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
            child: Column(
              children: <Widget>[
                Text(
                  ' Stabilités :',
                  style: klabeladdMedStyle,
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
          SizedBox(
            height: 40,
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
                onPressed: () {
                  //aller a add med screen
                  Navigator.pushNamed(context, Add_med.id);
                  // TODO:remplir les autres
                  nom_med_ctrl.text = nom_medicament;
                  volum_flcn_ctrl.text = volume_flcn.toString();
                  qte_disponible_ctrl.text = qte_disponible.toString();
                },
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
                //confirmer la supression
                onPressed: () {
                  Alert(
                    context: context,
                    type: AlertType.warning,
                    title: "CONFIRMER",
                    desc:
                        "êtes vous certains de vouloir supprimer ce médicament",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "Oui",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {
                          //supprmer med

                          dbmanager.supprimerMed(selected_id);

                          print('oui');
                          Navigator.pushNamed(context, List_med.id);
                        },
                      ),
                      DialogButton(
                          child: Text(
                            "Non",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () {
                            print('non');
                            //pour revenir au page
                            Navigator.pop(context);
                          })
                    ],
                  ).show();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
