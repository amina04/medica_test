import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medica/constantes.dart';
import 'package:medica/main.dart';
import 'package:medica/model/database.dart';
import 'package:medica/widgets_sp%C3%A9cifiques/TextFieldmedica.dart';
import 'package:medica/controller/add_med_controller.dart';
import 'package:medica/model/model_tableaux/medicament.dart';
import 'package:medica/view/list_med_screen.dart';
import 'package:medica/model/model_tableaux/medicament.dart';

class Add_med extends StatefulWidget {
  static String id = 'Add_med';

  @override
  _Add_med createState() => _Add_med();
}

class _Add_med extends State<Add_med> {
  //cree une instance de db class

  var dbmanager = new Dbmedica();
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
                  Textfieldmedica(
                    label: 'Nom de médicament',
                    controller: nom_med_ctrl,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldmedica(
                    label: 'Laboratoire',
                    controller: nom_labo_ctrl,
                  ),
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
                  Textfieldmedica(
                    label: 'Pésentation',
                    controller: presentation_ctrl,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        child: Card(
                          elevation: 5.0,
                          margin: EdgeInsets.all(2.0),
                          //pour radius
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),

                          child: Icon(
                            Icons.add,
                            size: 45.0,
                            color: Colors.teal,
                          ),
                        ),
                        onTap: () {
                          // TODO: insirer un autre stabilité
                          //renouvler l ajout de présentation
                          print('add presentation');
                          presentation_ctrl.clear();
                        },
                      )
                    ],
                  ),
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
                    'volume de flacon :',
                    textAlign: TextAlign.center,
                    style: klabeladdMedStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldmedica(
                    label: 'volume de flacon',
                    controller: volum_flcn_ctrl,
                  ),
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
                    'Quantité disponible :',
                    textAlign: TextAlign.center,
                    style: klabeladdMedStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldmedica(
                    label: 'Quantité disponible',
                    controller: qte_disponible_ctrl,
                  ),
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
                  Textfieldmedica(
                    label: 'C Initiale',
                    controller: c_ini_ctrl,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldmedica(
                    label: 'C Minimale',
                    controller: c_min_ctrl,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldmedica(
                    label: 'C Maximale',
                    controller: c_max_ctrl,
                  ),
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
                  Textfieldmedica(
                    label: 'Volume aprés péparation',
                    controller: volum_apr_praparation_ctrl,
                  ),
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
                  Textfieldmedica(
                    label: 'Prix du mg ',
                    controller: prix_ctrl,
                  ),
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
                  Textfieldmedica(
                    label: 'Flacon ',
                    controller: flacon_ctrl,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldmedica(
                    label: 'Températeure ',
                    controller: temperature_ctrl,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textfieldmedica(
                    label: 'stabilité',
                    controller: stabilite_ctrl,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        child: Card(
                          elevation: 5.0,
                          margin: EdgeInsets.all(2.0),
                          //pour radius
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),

                          child: Icon(
                            Icons.add,
                            size: 45.0,
                            color: Colors.teal,
                          ),
                        ),
                        onTap: () {
                          // TODO:insirer stabilite
                          //pour renouvler l ajout de stabilité
                          temperature_ctrl.clear();
                          stabilite_ctrl.clear();
                          flacon_ctrl.clear();
                          print('add stabilité');
                        },
                      )
                    ],
                  ),
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
              onPressed: () async {
                //ajout de med
                if (med_modif == null) {
                  //ajouter un medicament
                  dbmanager.insertMedicament(new Medicament(
                      nom_med_ctrl.text,
                      double.parse(qte_disponible_ctrl.text),
                      double.parse(volum_flcn_ctrl.text)));
                  // TODO: insertion details medicament
                  //pour met les texte field null
                  nom_med_ctrl.clear();
                  nom_labo_ctrl.clear();
                  volum_flcn_ctrl.clear();
                  qte_disponible_ctrl.clear();
                  presentation_ctrl.clear();
                  c_ini_ctrl.clear();
                  c_min_ctrl.clear();
                  c_max_ctrl.clear();
                  volum_apr_praparation_ctrl.clear();
                  prix_ctrl.clear();
                  flacon_ctrl.clear();
                  temperature_ctrl.clear();
                  stabilite_ctrl.clear();
                } else {
                  //modification
                  Medicament medUpdated = Medicament.fromMap({
                    "nom": nom_med_ctrl.text,
                    "qte_disponible": double.parse(qte_disponible_ctrl.text),
                    "volume_flacon": double.parse(volum_flcn_ctrl.text),
                    "id_medicament": updated_id,
                  });
                  await dbmanager.modifierMed(medUpdated);
                  //pour met les texte field null
                  nom_med_ctrl.clear();
                  nom_labo_ctrl.clear();
                  volum_flcn_ctrl.clear();
                  qte_disponible_ctrl.clear();
                  presentation_ctrl.clear();
                  c_ini_ctrl.clear();
                  c_min_ctrl.clear();
                  c_max_ctrl.clear();
                  volum_apr_praparation_ctrl.clear();
                  prix_ctrl.clear();
                  flacon_ctrl.clear();
                  temperature_ctrl.clear();
                  stabilite_ctrl.clear();
                  //mettre medupdated null a lafin de procuss
                  med_modif = null;
                  updated_id = null;
                  Navigator.pushNamed(context, List_med.id);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
