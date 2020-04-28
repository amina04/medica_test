import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:medica/constantes.dart';

class Fin_journee extends StatefulWidget {
  static String id = 'fin_journee_screen';
  @override
  _Fin_journeeState createState() => _Fin_journeeState();
}

class _Fin_journeeState extends State<Fin_journee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Fin de journée', style: kappBarTextStyle),
        gradient:
            LinearGradient(colors: [Colors.lightBlueAccent, Colors.tealAccent]),
      ),
      //Navigateur Bar
      body: Column(
        children: <Widget>[
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'choisis un médicament',
                    style: klabelresultatStyle,
                  ),
                  SizedBox(
                    width: 29.0,
                  ),
                  // TODO: create a dropdown menu from a data base
                  DropdownButton<String>(items: null, onChanged: null),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 80.0, horizontal: 4.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 48.0, 0, 48.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            'La quantité consommée : ',
                            style: klabelTextStyle,
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                '5',
                                style: klabelresultatStyle,
                              ),
                              Text(
                                'flacons',
                                style: klabelresultatStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            'reliquats et les stabilités : ',
                            style: klabelTextStyle,
                          ),
                        ),
                        Container(
                          child: Column(
                            //relicat
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Relicats :',
                                    style: klabelresultatStyle,
                                  ),
                                  Text(
                                    '5',
                                    style: klabelresultatStyle,
                                  ),
                                  Text(
                                    'flacons',
                                    style: klabelresultatStyle,
                                  ),
                                ],
                              ),
                              //stabilite
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Stabilités :',
                                    style: klabelresultatStyle,
                                  ),
                                  Text(
                                    '48',
                                    style: klabelresultatStyle,
                                  ),
                                  Text(
                                    'heures ',
                                    style: klabelresultatStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            'le prix des reliquats jetés : ',
                            style: klabelTextStyle,
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                '5623.15',
                                style: klabelresultatStyle,
                              ),
                              Text(
                                'DA',
                                style: klabelresultatStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
