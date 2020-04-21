import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medica/calculer_la_dose_screen.dart';
import 'package:medica/fin_journe_screen.dart';
import 'package:medica/list_med_screen.dart';

import 'button_menu.dart';
import 'debut_journe_screen.dart';

class Menu extends StatelessWidget {
  static String id = 'menu_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/menu.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text('Medica',
                    style: TextStyle(
                      fontFamily: 'Bellota',
                      color: Colors.white,
                      fontSize: 48.0,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey.shade200,
              padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.0),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          //pour eviter de beaucoup texte de button alors je le met d une classe qui s appele buutton_menu et puis juste je l appel et je la donne des propriete
                          child: button_menu(
                            //une fonction ndiro fiha win 7abin nro7o
                            ontap: () {
                              Navigator.pushNamed(context, Calculer_ladose.id);
                            },
                            label: 'calculer la dose',
                            nom_image: 'calculator',
                          ),
                        ),
                        Expanded(
                          child: button_menu(
                            ontap: () {
                              Navigator.pushNamed(context, List_med.id);
                            },
                            label: 'Explorer la liste des medicaments',
                            nom_image: 'list-01',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: button_menu(
                            ontap: () {
                              Navigator.pushNamed(context, Debut_journee.id);
                            },
                            label: 'Début de journée',
                            nom_image: 'energy-01',
                          ),
                        ),
                        Expanded(
                          child: button_menu(
                            ontap: () {
                              Navigator.pushNamed(context, Fin_journee.id);
                            },
                            label: 'Fin de journée',
                            nom_image: 'tired',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
