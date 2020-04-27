import 'package:flutter/material.dart';
import 'package:medica/constantes.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
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
            title: Text('Liste des médicaments',
              style: kappBarTextStyle ),
        gradient: LinearGradient(
            colors:  [Colors.lightBlueAccent, Colors.tealAccent]),
                               ),
      //Navigateur Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.add),
            title: new Text('Ajouter'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.delete),
              title: Text('Supprimer')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.create),
              title: Text('Modifier')
          ),
              ],
      ),
    );
  }
}

