import 'package:flutter/material.dart';
import 'package:medica/constantes.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:medica/view/medicament_details_screen.dart';
import 'add_med_screen.dart';
import 'history_details_screen.dart';

class list_history extends StatefulWidget {
  static String id = 'list_history';
  @override
  _list_history createState() => _list_history();
}

class _list_history extends State<list_history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        centerTitle: true,
        title: Text('Liste des patients', style: kappBarTextStyle),
        gradient:
            LinearGradient(colors: [Colors.lightBlueAccent, Colors.tealAccent]),
      ),
      body: _buildlistview(),
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
  }
}
