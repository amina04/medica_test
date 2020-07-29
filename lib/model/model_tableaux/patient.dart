import 'package:flutter/material.dart';

class Patient {
  //les colones de table student
  int _id_patient;
  String _nom;
  String _prenom;
  int _taille;
  int _poids;
  double _surface_coporelle;

  //un constructeur pour remplir le table
  Patient(
    this._nom,
    this._prenom,
    this._taille,
    this._poids,
    this._surface_coporelle,
  );
  Patient.map(dynamic obj) {
    this._nom = obj['nom'];
    this._prenom = obj['prenom'];
    this._taille = obj['taille'];
    this._poids = obj['poids'];
    this._surface_coporelle = obj['surface_coporelle'];
    this._id_patient = obj['id_patient'];
  }

  //car les champs sont privée en met ca pour faciliter l acceder a eux
  int get id_patient => _id_patient;
  String get nom => _nom;
  String get prenom => _prenom;
  int get taille => _taille;
  int get poids => _poids;
  double get surface_coporelle => _surface_coporelle;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map['nom'] = _nom;
    map['prenom'] = _prenom;
    map['taille'] = _taille;
    map['poids'] = _poids;
    map['surface_coporelle'] = _surface_coporelle;

    if (id_patient != null) {
      map['id_patient'] = _id_patient;
    }
    return map;
  }

  Patient.fromMap(Map<String, dynamic> map) {
    this._nom = map['nom'];
    this._prenom = map['prenom'];
    this._taille = map['taille'];
    this._poids = map['poids'];
    this._surface_coporelle = map['surface_coporelle'];
    this._id_patient = map['id_patient'];
  }
}
