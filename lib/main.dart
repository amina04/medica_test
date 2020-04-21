import 'package:flutter/material.dart';
import 'package:medica/calculer_la_dose_screen.dart';
import 'package:medica/debut_journe_screen.dart';
import 'package:medica/fin_journe_screen.dart';
import 'package:medica/list_med_screen.dart';
import 'package:medica/menu.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'start.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.light().copyWith(
          textTheme: TextTheme(body1: TextStyle(color: Colors.black))),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Start(),
      ),
      initialRoute: Start.id,
      routes: {
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
