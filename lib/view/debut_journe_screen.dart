import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:medica/constantes.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:medica/widgets_spécifiques/button_menu.dart';

class Debut_journee extends StatefulWidget {
  static String id = 'debut_journee_screen';
  @override
  _Debut_journeeState createState() => _Debut_journeeState();
}

class _Debut_journeeState extends State<Debut_journee> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: GradientAppBar(
          title: Text(
            'Début de journée',
            style: kappBarTextStyle,
          ),
          gradient: LinearGradient(
              colors: [Colors.lightBlueAccent, Colors.tealAccent]),
        ),
        backgroundColor: Colors.white,
        body: MyStatelessWidget(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0, // this will be set when a new tab is tapped

          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.arrow_back_ios), title: Text('Retour')),
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Acceuil'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 30),
          ButtonTheme(
            height: 60,
            minWidth: 317,
            child: RaisedButton(
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                "La liste des médicaments périmés",
                style: kbuttonTextStyle,
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 30),
          ButtonTheme(
            height: 60,
            minWidth: 300,
            child: RaisedButton(
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                "La liste des médicaments non périmés",
                style: kbuttonTextStyle,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
