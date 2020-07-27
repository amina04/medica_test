import 'package:flutter/material.dart';

class Solution {
  //les colones de table student
  int _id_solution;
  String _date_preparation;
  double _posologie;
  int _reduction;
  double _dose_administrer;
  double _volume_finale;
  //=====clé etrangers====
  int _id_medicament;
  int _poches;
  int _id_patient;

  //un constructeur pour remplir le table
  Solution(
    this._date_preparation,
    this._posologie,
    this._reduction,
    this._dose_administrer,
    this._volume_finale,
    this._id_medicament,
    this._poches,
    this._id_patient,
  );

  Solution.map(dynamic obj) {}

  //car les champs sont privée en met ca pour faciliter l acceder a eux
  int get id_solution => _id_solution;
  String get date_preparation => _date_preparation;
  double get posologie => _posologie;
  int get reduction => _reduction;
  double get dose_administrer => _dose_administrer;
  double get volume_finale => _volume_finale;
  int get id_medicament => _id_medicament;
  int get poches => _poches;
  int get id_patient => _id_patient;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map['date_preparation'] = _date_preparation;
    map['posologie'] = _posologie;
    map['reduction'] = _reduction;
    map['dose_administrer'] = _dose_administrer;
    map['volume_finale'] = _volume_finale;
    map['id_medicament'] = _id_medicament;
    map['id_patient'] = _id_patient;
    map['poches'] = _poches;
    if (id_solution != null) {
      map['id_solution'] = _id_solution;
    }

    return map;
  }

  Solution.fromMap(Map<String, dynamic> map) {
    this._date_preparation = map['date_preparation'];
    this._posologie = map['posologie'];
    this._reduction = map['reduction'];
    this._dose_administrer = map['dose_administrer'];
    this._volume_finale = map['volume_finale'];
    this._id_solution = map['id_solution'];
    this._id_patient = map['id_patient'];
    this._id_medicament = map['id_medicament'];
    this._poches = map['poches'];
  }
}
