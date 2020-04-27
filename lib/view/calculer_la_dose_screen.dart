import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:medica/widgets_sp%C3%A9cifiques/Step2.dart';
import 'package:medica/constantes.dart';
import '../widgets_spécifiques/Step3.dart';
import '../widgets_spécifiques/Step1.dart';

class Calculer_ladose extends StatefulWidget {
  static String id = 'Calculer_ladose_screen';
  @override
  _Calculer_ladoseState createState() => _Calculer_ladoseState();
}

class _Calculer_ladoseState extends State<Calculer_ladose> {
  @override
  int _currentStep = 0;

  String current_item = 'med1';
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: GradientAppBar(
        title: Text(
          'Calculer la dose',
          style: kappBarTextStyle,
        ),
        gradient:
            LinearGradient(colors: [Colors.lightBlueAccent, Colors.tealAccent]),
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(35.0),
          ),
          child: Theme(
            data: ThemeData(
              primaryColor: Colors.lightBlueAccent,
            ),
            child: Stepper(
              type: StepperType.horizontal,
              currentStep: _currentStep,
              onStepTapped: (int step) => setState(() => _currentStep = step),
              onStepContinue: _currentStep < 2
                  ? () => setState(() => _currentStep += 1)
                  : null,
              onStepCancel: _currentStep > 0
                  ? () => setState(() => _currentStep -= 1)
                  : null,
              steps: <Step>[
                new Step(
                  title: new Text(
                    'Patient',
                  ),
                  content: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 70.0),
                    child: Step1(),
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 0
                      ? StepState.complete
                      : StepState.disabled,
                ),
                new Step(
                  title: new Text(
                    'Medication',
                  ),
                  content: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 70.0),
                    child: Step2(),
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.complete
                      : StepState.disabled,
                ),
                new Step(
                  title: new Text('Résultat'),
                  content: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 80.0, horizontal: 10.0),
                    child: Step3(),
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 2
                      ? StepState.complete
                      : StepState.disabled,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
