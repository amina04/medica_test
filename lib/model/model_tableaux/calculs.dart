import 'package:flutter/material.dart';

class Calculs {
  //les colones de table student
  double _reliquat;
  double _qte_consomme;
  //=====clé etrangers====
  int _id_medicament;
  String _date_preparation;

  //un constructeur pour remplir le table
  Calculs(
    this._reliquat,
    this._qte_consomme,
    this._id_medicament,
    this._date_preparation,
  );
  Calculs.map(dynamic obj) {
    this._reliquat = obj['reliquat'];
    this._qte_consomme = obj['qte_consomme'];
    this._date_preparation = obj['date_preparation'];
    this._id_medicament = obj['id_medicament'];
  }

  //car les champs sont privée en met ca pour faciliter l acceder a eux
  double get reliquat => _reliquat;
  double get qte_consomme => _qte_consomme;
  int get id_medicament => _id_medicament;
  String get date_preparation => _date_preparation;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map['reliquat'] = _reliquat;
    map['qte_consomme'] = _qte_consomme;
    map['date_preparation'] = _date_preparation;
    map['id_medicament'] = _id_medicament;

    return map;
  }

  Calculs.fromMap(Map<String, dynamic> map) {
    this._reliquat = map['reliquat'];
    this._qte_consomme = map['qte_consomme'];
    this._date_preparation = map['date_preparation'];
    this._id_medicament = map['id_medicament'];
  }
}
