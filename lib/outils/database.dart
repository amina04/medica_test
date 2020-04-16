import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Dbmedicament {
  //cree une instance
  Database _database;

//fonction qui cree une db
  Future openDb() async {
    if (_database == null) {
      // get path ou la base de donee va cree le nom of the db
      _database = await openDatabase(
          join(await getDatabasesPath(), "medica .db"),
          version: 1, onCreate: (Database db, int version) async {
        //apre on cree la table et les colones
        await db.execute(
          "CREATE TABLE medicament(id INTEGER PRIMARY KEY autoincrement, nom TEXT, nom_labo TEXT,flacon REAL,prix_mg INTEGER,concentration_init REAL,concentration_min REAL,concentration_max REAL, volume REAL,flacon_verre_4 INTEGER,flacon_verre_25 INTEGER,flacon_PVC_25 INTEGER,)",
        );
      });
    }
  }

  //insirer fonction
  Future<int> insertMedicament(Medicament med) async {
    //attend l ouverture de db pour avour une instance
    await openDb(); //nome de table et les valeur medicament nom de table
    return await _database.insert('medicament', med.toMap());
  }
  Future<List<Medicament>> getMedicamentList() async {
    await openDb();
    //le nome de table
    final List<Map<String, dynamic>> maps = await _database.query('medicament');
    //comme une boucle pour afichher les lignes 1 par 1
    return List.generate(maps.length, (i) {
      return Medicament(
          id: maps[i]['id'],
        nom: maps[i]['nom'],
        nom_labo: maps[i]['nom_labo'],
        flacon: maps[i]['flacon'],
        prix_mg: maps[i]['prix_mg'],
        concentration_init: maps[i]['concentration_init'],
        concentration_min: maps[i]['concentration_min'],
        concentration_max: maps[i]['concentration_max'],
        volume: maps[i]['volume'],
        flacon_verre_4: maps[i]['flacon_verre_4'],
        flacon_verre_25: maps[i]['flacon_verre_25'],
        flacon_PVC_25: maps[i]['flacon_PVC_25'],

      );
    });
  }

//modifier on mdifier par id
  Future<int> updateMedicament(Medicament medicament) async {
    await openDb();
    // nome de table et val
    return await _database.update('medicament', medicament.toMap(),
        //passer l objet student
        where: "id = ?",
        whereArgs: [medicament.id]);
  }

//suppprimer par id
  Future<void> deleteMedicament(int id) async {
    await openDb();
    await _database.delete('medicament', where: "id = ?", whereArgs: [id]);
  }
}


class Medicament {
  //les colones de table student
  int id;
  String nom;
  String nom_labo;
  double flacon;
  int prix_mg;
  double concentration_init;
  double concentration_min;
  double concentration_max;
  double volume;
  int flacon_verre_4;
  int flacon_verre_25;
  int flacon_PVC_25;
  //un constructeur pour remplir le table
  Medicament(
      {@required this.id,
      @required this.nom_labo,
      @required this.nom,
        @required this.flacon,
      @required this.prix_mg,
      @required this.concentration_init,
  @required this.concentration_min,
        @required   this.concentration_max,
        @required this.volume,
        @required this.flacon_verre_4,
        @required this.flacon_verre_25,
        @required  this.flacon_PVC_25});
  Map<String, dynamic> toMap() {
    return {
      'nom': nom,
      'nom_labo': nom_labo,
      'flacon': flacon,
      'prix_mg': prix_mg,
      'concentration_init': concentration_init,
      'concentration_min': concentration_min,
      'concentration_max': concentration_max,
      'volume': volume,
      'flacon_verre_4': flacon_verre_4,
      'flacon_verre_25': flacon_verre_25,
      'flacon_PVC_25': flacon_PVC_25,
    };
  }
}
