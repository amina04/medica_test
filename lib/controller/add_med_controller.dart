import 'package:flutter/material.dart';

class add_med_ctrl extends StatefulWidget {
  @override
  _add_med_ctrlState createState() => _add_med_ctrlState();
}

final nom_med_ctrl = TextEditingController();
final nom_labo_ctrl = TextEditingController();
final volum_flcn_ctrl = TextEditingController();
final qte_disponible_ctrl = TextEditingController();
final presentation_ctrl = TextEditingController();
final c_ini_ctrl = TextEditingController();
final c_min_ctrl = TextEditingController();
final c_max_ctrl = TextEditingController();
final volum_apr_praparation_ctrl = TextEditingController();
final prix_ctrl = TextEditingController();
final flacon_ctrl = TextEditingController();
final temperature_ctrl = TextEditingController();
final stabilite_ctrl = TextEditingController();

class _add_med_ctrlState extends State<add_med_ctrl> {
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed. pour allouer la ram
    nom_med_ctrl.dispose();
    nom_labo_ctrl.dispose();
    volum_flcn_ctrl.dispose();
    qte_disponible_ctrl.dispose();
    presentation_ctrl.dispose();
    c_ini_ctrl.dispose();
    c_min_ctrl.dispose();
    c_max_ctrl.dispose();
    volum_apr_praparation_ctrl.dispose();
    prix_ctrl.dispose();
    flacon_ctrl.dispose();
    temperature_ctrl.dispose();
    stabilite_ctrl.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
