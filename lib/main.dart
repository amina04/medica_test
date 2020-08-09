import 'package:flutter/material.dart';
import 'package:medica/controller/add_med_controller.dart';
import 'package:medica/model/database.dart';
import 'package:medica/model/model_tableaux/medicament.dart';
import 'package:medica/view/add_med_screen.dart';
import 'package:medica/view/calculer_la_dose_screen.dart';
import 'package:medica/view/debut_journe_screen.dart';
import 'package:medica/view/fin_journe_screen.dart';
import 'package:medica/view/history_details_screen.dart';
import 'package:medica/view/list_history_screen.dart';
import 'package:medica/view/list_med_screen.dart';
import 'package:medica/view/menu.dart';
import 'package:medica/view/medicament_details_screen.dart';

import 'view/start.dart';

List meds;
//utilisée dans list view pour le item selectionner a le id de item
Medicament med_det;
int selected_id;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var dbmanager = new Dbmedica();
  //add med
/*
  int savemed = await dbmanager.insertMedicament(new Medicament("coly", 5, 6));
  print('med saved $savemed');
  int savemed2 =
      await dbmanager.insertMedicament(new Medicament("rawn", 4, 56));
  print('med saved $savemed2');*/

  /*//get one med
  Medicament pol = await dbmanager.getMed(6);
  print('got med  ${pol.nom}');*/
  /*//supprmer med
  int meddeleted = await dbmanager.supprimerMed(1);
  if (meddeleted == 1) {
    print('the med is deleted');
  }*/
  //updating a medicament
  /*Medicament oxydol = await dbmanager.getMed(8);
  Medicament medUpdated = Medicament.fromMap({
    "nom": "doliprane",
    "qte_disponible": 23.3,
    "volume_flacon": 4.1,
    "id_medicament": 1,
  });
  await dbmanager.modifierMed(medUpdated);*/
  //Get all meds
/*
   meds = await dbmanager.getAllMed();
  for (int i = 0; i < meds.length; i++) {
    //la liste contient des objet il faut cree les objets
    // model var =model.map(liste)
    Medicament med = Medicament.map(meds[i]);
    print("medicament nom : ${med.nom}");
    print("medicament qte  : ${med.qte_disponible}");
    print("medicament volume : ${med.volume_flacon}");
    print("medicament id: ${med.id_medicament}");
  }
*/
  meds = await dbmanager.getAllMed();
  //med_det = await dbmanager.getMed(selected_id);
  runApp(
    MaterialApp(
      theme: ThemeData.light().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Start(),
      ),
      initialRoute: Start.id,
      routes: {
        //les fenetres ta3 app kamlin w meme kon nzido des fenetres khin lzm ndirohom hna bah nesta3amlo navigator .push
        //khdemt b const au lieu string bah tol n3odo n3ayto lel constant string w lokan naghalto f 7arf matamchi w manazrbouch nfi9o lel ghalta
        Start.id: (context) => Start(),
        Menu.id: (context) => Menu(),
        Calculer_ladose.id: (context) => Calculer_ladose(),
        List_med.id: (context) => List_med(),
        Debut_journee.id: (context) => Debut_journee(),
        Fin_journee.id: (context) => Fin_journee(),
        Detail_med.id: (context) => Detail_med(),
        Add_med.id: (context) => Add_med(),
        list_history.id: (context) => list_history(),
        Detail_patient.id: (context) => Detail_patient(),
      },
    ),
  );
}
