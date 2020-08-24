import 'package:flutter/material.dart';
import 'package:medica/constantes.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:medica/model/database.dart';
import 'package:medica/model/model_tableaux/patient.dart';
import 'package:medica/view/medicament_details_screen.dart';
import 'add_med_screen.dart';
import 'history_details_screen.dart';
import 'package:medica/main.dart';

class list_history extends StatefulWidget {
  static String id = 'list_history';
  @override
  _list_history createState() => _list_history();
}

class _list_history extends State<list_history> {
  var dbmanager = new Dbmedica();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        centerTitle: true,
        title: Text('Liste des patients', style: kappBarTextStyle),
        gradient:
            LinearGradient(colors: [Colors.lightBlueAccent, Colors.tealAccent]),
      ),
      body: FutureBuilder(
        future: dbmanager.getAllpatient(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            patient_list = snapshot.data;
            return _buildlistview();
          }
          return new CircularProgressIndicator();
        },
      ),
    );
  }

  //la methode buildlist view
  ListView _buildlistview() {
    return ListView.builder(
        itemCount: patient_list == null ? 0 : patient_list.length,
        itemBuilder: (BuildContext context, int position) {
          return Card(
            child: ListTile(
              title: Row(
                children: <Widget>[
                  Text(
                    '${Patient.fromMap(patient_list[position]).Nom_patient}',
                    style: kresultliststyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    ' ${Patient.fromMap(patient_list[position]).Prenom_patient}',
                    style: kresultliststyle,
                  ),
                ],
              ),
              //un sous titre
              //un sous titre
              subtitle: Text(
                '20/02/2020',
                style: klabelTextStyle,
              ),
              //l icon a droite
              leading: Icon(
                Icons.person,
                size: 35.0,
              ),
              // l icon a gauche
              trailing: Icon(
                Icons.arrow_forward,
                size: 35.0,
                color: Colors.lightBlueAccent,
              ),
              //ajouter async pour marcher get med avec await
              onTap: () async {
                // Navigator.pushNamed(context, Detail_med.id);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Detail_patient()));

                selected_id_patient =
                    Patient.fromMap(patient_list[position]).id_patient;

                patient_det = await dbmanager.getPatient(selected_id_patient);
              },
            ),
          );
        });
  }
  /*
  ListView _buildlistview() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index) {
          return Card(
            child: ListTile(
              title: Text(
                'patient $index',
                style: kresultliststyle,
              ),
              //un sous titre
              subtitle: Text(
                '20/02/2020',
                style: klabelTextStyle,
              ),
              //l icon a droite
              leading: Icon(
                Icons.person,
                size: 35.0,
              ),
              // l icon a gauche
              trailing: Icon(
                Icons.arrow_forward,
                size: 35.0,
                color: Colors.lightBlueAccent,
              ),
              onTap: () {
                Navigator.pushNamed(context, Detail_patient.id);
              },
            ),
          );
        });
  }*/
}
