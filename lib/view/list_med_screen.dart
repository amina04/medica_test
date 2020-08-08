import 'package:flutter/material.dart';
import 'package:medica/constantes.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:medica/main.dart';
import 'package:medica/model/database.dart';
import 'package:medica/model/model_tableaux/medicament.dart';
import 'package:medica/model/model_tableaux/medicament.dart';
import 'package:medica/view/medicament_details_screen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../main.dart';
import 'add_med_screen.dart';
import 'package:medica/main.dart';

class List_med extends StatefulWidget {
  static String id = 'list_med_screen';
  @override
  _List_medState createState() => _List_medState();
}

class _List_medState extends State<List_med> {
  var dbmanager = new Dbmedica();

  @override
  bool medicament_existe = false;
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text(
    'Liste des médicaments',
    style: kappBarTextStyle,
  );
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                if (this.cusIcon.icon == Icons.search) {
                  this.cusIcon = Icon(Icons.cancel);
                  this.cusSearchBar = TextField(
                    decoration:
                        InputDecoration(hintText: 'Chercher un médicament'),
                    textInputAction: TextInputAction.search,
                    onSubmitted: (term) {
                      //si le patient n existe pas on affiche ce alert message
                      if (medicament_existe == false) {
                        Alert(
                                context: context,
                                title: "Ce médicament n'existe pas",
                                desc: "vous devez le l'ajouter d'abord.")
                            .show();
                      }
                    },
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  );
                } else {
                  this.cusIcon = Icon(Icons.search);
                  this.cusSearchBar = Text(
                    'Liste des médicaments',
                    style: kappBarTextStyle,
                  );
                }
              });
            },
            icon: cusIcon,
          ),
        ],
        centerTitle: true,
        title: cusSearchBar,
        gradient:
            LinearGradient(colors: [Colors.lightBlueAccent, Colors.tealAccent]),
      ),
      //pour reecrier la list view aprées chaque ajout
      body: FutureBuilder(
        future: dbmanager.getAllMed(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            meds = snapshot.data;
            return _buildlistview();
          }
          return new CircularProgressIndicator();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Add_med.id);
        },
        child: new Icon(
          Icons.add,
          size: 40,
        ),
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
      ),
    );
  }

  //la methode buildlist view
  ListView _buildlistview() {
    return ListView.builder(
        itemCount: meds == null ? 0 : meds.length,
        itemBuilder: (BuildContext context, int position) {
          return Card(
            child: ListTile(
              title: Text(
                'médicament : ${Medicament.fromMap(meds[position]).nom}',
                style: kresultliststyle,
              ),
              //un sous titre
              subtitle: Text(
                'Laboratoire : paracétamol',
                style: klabelTextStyle,
              ),
              //l icon a droite
              leading: Image.asset(
                'images/pills.png',
              ),
              // l icon a gauche
              trailing: Icon(
                Icons.arrow_forward,
                size: 35.0,
                color: Colors.lightBlueAccent,
              ),
              onTap: () {
                // Navigator.pushNamed(context, Detail_med.id);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Detail_med()));
                selected_id = Medicament.fromMap(meds[position]).id_medicament;
                print('id delectionne $selected_id');
              },
            ),
          );
        });
  }
}

Medicament getMED() {
  for (int i = 0; i < meds.length; i++) {
    //la liste contient des objet il faut cree les objets
    // model var =model.map(liste)
    Medicament med = Medicament.map(meds[i]);
    print("medicament nom : ${med.nom}");
    print("medicament qte  : ${med.qte_disponible}");
    print("medicament volume : ${med.volume_flacon}");
    print("medicament id: ${med.id_medicament}");
    return med;
  }
}
