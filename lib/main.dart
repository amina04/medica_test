import 'package:flutter/material.dart';
import 'package:medica/view/calculer_la_dose_screen.dart';
import 'package:medica/view/debut_journe_screen.dart';
import 'package:medica/view/fin_journe_screen.dart';
import 'package:medica/view/list_med_screen.dart';
import 'package:medica/view/menu.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'view/start.dart';

void main() {
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
      },
    ),
  );
}
