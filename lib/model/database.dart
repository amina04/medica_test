import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:medica/model/model_tableaux/solution.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'model_tableaux/détails_med.dart';
import 'model_tableaux/medicament.dart';
import 'model_tableaux/patient.dart';
import 'model_tableaux/poches.dart';
import 'model_tableaux/calculs.dart';

class Dbmedica {
  //cree une instance
  static final Dbmedica _instance = new Dbmedica.internal();

  factory Dbmedica() => _instance;
  static Database _db;
//la declaration des attributs des tableaux pour eviter de tamber en erreur d'ortographe
  //tableau medicament=============================================
  final String tableMed = 'tableMedicament';
  final String columnId_med = 'id_medicament';
  final String columnNom = 'nom';
  final String columnQte_disponible = 'qte_disponible';
  final String columnVolume_flacon = 'volume_flacon';
  //tableau details medicament==========================================
  final String tabledetailMed = 'detailsMedicament';
  final String columnNom_labo = 'nom_labo';
  final String columnPresenatation = 'presentation';
  final String columnPrix = 'prix';
  final String columnCni = 'c_init';
  final String columnCmin = 'c_min';
  final String columnCmax = 'c_max';
  final String columnVolume_apr_pre = 'volume';
  final String column_verre_4 = 'verre_4';
  final String column_verre_25 = 'verre_25';
  final String column_PVC_25 = 'PVC_25';
  //tableau solution============================================================
  final String tablesolution = 'tableSolution';
  final String columnIdSolution = 'id_solution';
  final String columnDatePreparation = 'date_preparation';
  final String columnPosologie = 'posologie';
  final String columnReduction = 'reduction';
  final String columnDoseAdministrer = 'dose_administrer';
  final String columnVolumeFinale = 'volume_finale';
  //tableau patient============================================================
  final String tablepatient = 'tablePatient';
  final String columnIdPatient = 'id_patient';
  final String columnNom_patient = 'Nom_patient';
  final String columnPrenom_patient = 'Prenom_patient';
  final String columnTaille = 'taille';
  final String columnPoids = 'poids';
  final String columnSurfaceCoporelle = 'surface_coporelle';
  //tableau poches============================================================
  final String tablePoches = 'tablePoches';
  final String columnPoche = 'poche';
  final String columnVolumePoche = 'volume_poche';
  //tableau calculs============================================================
  final String tableCalculs = 'tableCalculs';
  final String columnReliquat = 'reliquat';
  final String columnQte_consomme = 'qte_consomme';
  //les cle etrangers========================================================
  final String FKmedId = 'FKmedId';
  final String FKpoche = 'FKpoche';
  final String FKpatientId = 'FKpatientId';
  final String FKDatePre = 'FKDatePre';
  //fonction qui cree une db
  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  Dbmedica.internal();

  initDb() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(
        documentDirectory.path, "maindb.db"); //home://directory/files/maindb.db
    var ourdb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return ourdb;
  }

  void _onCreate(Database db, int version) async {
    debugPrint('Database OnCreate');
    //table medicament
    await db.execute(
      "CREATE TABLE $tableMed($columnId_med INTEGER PRIMARY KEY , $columnNom TEXT , $columnQte_disponible REAL , $columnVolume_flacon REAL)",
    );
    debugPrint('table OnCreate');
/*    debugPrint('medicament OnCreate');
    //table details medicament
    await db.execute(
      "CREATE TABLE $tabledetailMed( $columnNom_labo TEXT,$columnPresenatation REAL,$columnPrix INTEGER,$columnCni REAL,$columnCmin REAL,$columnCmax REAL, $columnVolume_apr_pre REAL,$column_verre_4 INTEGER,$column_verre_25 INTEGER,$column_PVC_25 INTEGER,$FKmedId INTEGER, FOREIGN KEY($FKmedId ) REFERENCES $tableMed($columnId_med) ON DELETE CASCADE)",
    );
    //table solution
    await db.execute(
      "CREATE TABLE $tablesolution($columnIdSolution INTEGER PRIMARY KEY autoincrement,$columnDatePreparation DATE,$columnPosologie REAL,$columnReduction INTEGER,$columnDoseAdministrer REAL,$columnVolumeFinale REAL,$FKmedId  INTEGER, FOREIGN KEY($FKmedId ) REFERENCES $tableMed($columnId_med) ON DELETE CASCADE,$FKpoche INTEGER, FOREIGN KEY($FKpoche) REFERENCES $tablePoches($columnPoche) ON DELETE CASCADE,$FKpatientId INTEGER, FOREIGN KEY($FKpatientId) REFERENCES $tablepatient($columnIdPatient) ON DELETE CASCADE)",
    );
    //table calculs
    await db.execute(
      "CREATE TABLE $tableCalculs($columnReliquat REAL,$columnQte_consomme REAL,$FKmedId INTEGER, FOREIGN KEY($FKmedId) REFERENCES $tableMed($columnId_med) ON DELETE CASCADE,$FKDatePre INTEGER, FOREIGN KEY($FKDatePre) REFERENCES $tableMed($columnDatePreparation) ON DELETE CASCADE)",
    );
*/
    //table Patient
    await db.execute(
      "CREATE TABLE $tablepatient($columnIdPatient INTEGER PRIMARY KEY autoincrement,$columnNom_patient TEXT, $columnPrenom_patient TEXT,$columnTaille INTEGER,$columnPoids INTEGER,$columnSurfaceCoporelle REAL)",
    );
    /*
    //table poches
    await db.execute(
      "CREATE TABLE $tablePoches($columnPoche INTEGER PRIMARY KEY autoincrement,$columnVolumePoche REAL)",
    ); */
  }

//CRUD CREATE READ UPDATE DELETE
  //==============================CRUD MEDICAMENT1 ================================================================
//insirer fonction
  Future<int> insertMedicament(Medicament med) async {
    var dbMedicament = await db;
    int res = await dbMedicament.insert("$tableMed", med.toMap());

    return res;
  }

  //aficher tout les medicaments
  Future<List> getAllMed() async {
    var dbMedicament = await db;
    var result = await dbMedicament.rawQuery("SELECT * FROM $tableMed");
    return result.toList();
  }

  //afficher un medicament
  Future<Medicament> getMed(int id) async {
    var dbMedicament = await db;
    var result = await dbMedicament
        .rawQuery("SELECT * FROM $tableMed WHERE $columnId_med =$id");
    if (result.length == 0) return null;
    return new Medicament.fromMap(result.first);
  }

  //chercher un medicament
  Future<Medicament> chercherMed(String nom) async {
    var dbMedicament = await db;
    var result = await dbMedicament
        .rawQuery("SELECT * FROM $tableMed WHERE $columnNom LIKE '$nom%' ");
    if (result.length == 0) return null;
    return new Medicament.fromMap(result.first);
  }

  //supprimer un medicament
  Future<int> supprimerMed(int id) async {
    var dbMedicament = await db;
    return await dbMedicament
        //? veut dire que on le connait pas pour le moment
        .delete(tableMed, where: "$columnId_med = ?", whereArgs: [id]);
  }

  //modifier medicament
  Future<int> modifierMed(Medicament med) async {
    var dbMedicament = await db;
    //? veut dire que on le connait pas pour le moment
    return await dbMedicament.update(tableMed, med.toMap(),
        where: "$columnId_med = ?", whereArgs: [med.id_medicament]);
  }

/*
  //==============================CRUD Details medicament2 ================================================================
//insirer fonction
  Future<int> insertDetailMedicament(Detail_medicament det_med) async {
    var dbMedicament = await db;
    int res = await dbMedicament.insert("$tabledetailMed", det_med.toMap());
    return res;
  }

  //aficher tout les medicaments
  Future<List> getAllDetailMed() async {
    var dbMedicament = await db;
    var result = await dbMedicament.rawQuery("SELECT * FROM $tabledetailMed");
    return result.toList();
  }

  //supprimer un medicament
  Future<int> supprimerDetailMed(int id) async {
    var dbMedicament = await db;
    return await dbMedicament
        //? veut dire que on le connait pas pour le moment
        .delete(tabledetailMed, where: "$FKmedId = ?", whereArgs: [id]);
  }

  //modifier medicament
  Future<int> modifierDetailMed(Medicament med) async {
    var dbMedicament = await db;
    return await dbMedicament
        //? veut dire que on le connait pas pour le moment
        .update(tabledetailMed, med.toMap(),
            where: "$FKmedId = ?", whereArgs: [med.id]);
  }
*/
  //==============================CRUD patient 3================================================================
//insirer fonction
  Future<int> insertPatient(Patient pat) async {
    var dbMedicament = await db;
    int res = await dbMedicament.insert("$tablepatient", pat.toMap());
    return res;
  }

  //aficher tout
  Future<List> getAllpatient() async {
    var dbMedicament = await db;
    var result = await dbMedicament.rawQuery("SELECT * FROM $tablepatient");
    return result.toList();
  }

//chercher un medicament
  Future<Patient> chercherPatient(String nom) async {
    var dbMedicament = await db;
    var result = await dbMedicament.rawQuery(
        "SELECT * FROM $tablepatient WHERE $columnNom_patient LIKE '$nom' ");
    if (result.length == 0) return null;
    return new Patient.fromMap(result.first);
  }

  //afficher un patient
  Future<Patient> getPatient(int id) async {
    var dbMedicament = await db;
    var result = await dbMedicament
        .rawQuery("SELECT * FROM $tablepatient WHERE $columnIdPatient =$id");
    if (result.length == 0) return null;
    return new Patient.fromMap(result.first);
  }

  //supprimer
  Future<int> supprimerpatient(int id) async {
    var dbMedicament = await db;
    return await dbMedicament
        //? veut dire que on le connait pas pour le moment
        .delete(tablepatient, where: "$columnIdPatient= ?", whereArgs: [id]);
  }

  //modifier
  Future<int> modifierpatient(Patient pat) async {
    var dbMedicament = await db;
    return await dbMedicament
        //? veut dire que on le connait pas pour le moment
        .update(tablepatient, pat.toMap(),
            where: "$columnIdPatient = ?", whereArgs: [pat.id_patient]);
  }

/*
  //==============================CRUD solution 4================================================================
//insirer fonction
  Future<int> insertSolution(Solution sol) async {
    var dbMedicament = await db;
    int res = await dbMedicament.insert("$tablesolution", sol.toMap());
    return res;
  }

  //aficher tout
  Future<List> getAllSolutions() async {
    var dbMedicament = await db;
    var result = await dbMedicament.rawQuery("SELECT * FROM $tablesolution");
    return result.toList();
  }

  //supprimer
  Future<int> supprimerSolution(int id) async {
    var dbMedicament = await db;
    return await dbMedicament
        //? veut dire que on le connait pas pour le moment
        .delete(tablesolution, where: "$columnIdSolution= ?", whereArgs: [id]);
  }

  //modifier
  Future<int> modifierSolution(Solution sol) async {
    var dbMedicament = await db;
    return await dbMedicament
        //? veut dire que on le connait pas pour le moment
        .update(tablesolution, sol.toMap(),
            where: "$columnIdSolution = ?", whereArgs: [sol.id_solution]);
  }

  //==============================CRUD poches 5================================================================
//insirer fonction
  Future<int> insertPoches(Poches poch) async {
    var dbMedicament = await db;
    int res = await dbMedicament.insert("$tablePoches", poch.toMap());
    return res;
  }

  //aficher tout
  Future<List> getAllPches() async {
    var dbMedicament = await db;
    var result = await dbMedicament.rawQuery("SELECT * FROM $tablePoches");
    return result.toList();
  }

  //supprimer
  Future<int> supprimerPoches(int id) async {
    var dbMedicament = await db;
    return await dbMedicament
        //? veut dire que on le connait pas pour le moment
        .delete(tablePoches, where: "$columnPoche= ?", whereArgs: [id]);
  }

  //modifier
  Future<int> modifierPoche(Poches poch) async {
    var dbMedicament = await db;
    return await dbMedicament
        //? veut dire que on le connait pas pour le moment
        .update(tablePoches, poch.toMap(),
            where: "$columnPoche = ?", whereArgs: [poch.poche]);
  }

  //==============================CRUD calculs 6================================================================
//insirer fonction
  Future<int> insertcalculs(Calculs cal) async {
    var dbMedicament = await db;
    int res = await dbMedicament.insert("$tableCalculs", cal.toMap());
    return res;
  }

  //aficher tout
  Future<List> getAllCalculs() async {
    var dbMedicament = await db;
    var result = await dbMedicament.rawQuery("SELECT * FROM $tableCalculs");
    return result.toList();
  }

  //supprimer
  Future<int> supprimerCalculs(int id) async {
    var dbMedicament = await db;
    return await dbMedicament
        //? veut dire que on le connait pas pour le moment
        .delete(tableCalculs, where: "$FKDatePre= ?", whereArgs: [id]);
  }
*/
  //fermer la bese des donnee
  Future fermer() async {
    var dbMedicament = await db;
    return dbMedicament.close();
  }
}
