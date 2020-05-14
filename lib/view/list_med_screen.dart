import 'package:flutter/material.dart';
import 'package:medica/constantes.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:medica/view/medicament_details_screen.dart';
import 'add_med_screen.dart';

class List_med extends StatefulWidget {
  static String id = 'list_med_screen';
  @override
  _List_medState createState() => _List_medState();
}

class _List_medState extends State<List_med> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        centerTitle: true,
        title: Text('Liste des médicaments', style: kappBarTextStyle),
        gradient:
            LinearGradient(colors: [Colors.lightBlueAccent, Colors.tealAccent]),
      ),
      body: _buildlistview(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Add_med.id);
        },
        child: new Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
      ),
    );
  }

  //la methode buildlist view
  ListView _buildlistview() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index) {
          return Card(
            child: ListTile(
              title: Text(
                'médicament $index',
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
                Navigator.pushNamed(context, Detail_med.id);
              },
            ),
          );
        });
  }
}
