import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:medica/constantes.dart';
import 'TextFieldmedica.dart';

class Calculer_ladose extends StatefulWidget {
  static String id = 'Calculer_ladose_screen';
  @override
  _Calculer_ladoseState createState() => _Calculer_ladoseState();
}

class _Calculer_ladoseState extends State<Calculer_ladose> {
  @override
  int _currentStep = 0;
  int height = 180;
  int weight = 60;
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
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'La taille ',
                          style: klabelTextStyle,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              textBaseline: TextBaseline.alphabetic,
                              // crossAxisAlignment: CrossAxisAlignment.baseline,

                              children: <Widget>[
                                Text(
                                  height.toString(),
                                  style: klabelTextStyle,
                                ),
                                Text(
                                  'cm',
                                  style: klabelTextStyle,
                                ),
                              ],
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                thumbColor: Colors.tealAccent,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 10.0),
                                overlayShape: RoundSliderOverlayShape(
                                  overlayRadius: 25.0,
                                ),
                                activeTrackColor: Colors.tealAccent.shade700,
                                overlayColor: Color(0xFFE2FFFF),
                                inactiveTrackColor: Color(0xFF8D8E98),
                              ),
                              child: Slider(
                                value: height.toDouble(),
                                min: 40.0,
                                max: 220.0,
                                onChanged: (double newValue) {
                                  setState(() {
                                    height = newValue.round();
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Le poids ',
                          style: klabelTextStyle,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              textBaseline: TextBaseline.alphabetic,
                              // crossAxisAlignment: CrossAxisAlignment.baseline,

                              children: <Widget>[
                                Text(
                                  weight.toString(),
                                  style: klabelTextStyle,
                                ),
                                Text(
                                  'Kg',
                                  style: klabelTextStyle,
                                ),
                              ],
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                thumbColor: Colors.tealAccent,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 10.0),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 25.0),
                                activeTrackColor: Colors.tealAccent.shade700,
                                overlayColor: Color(0xFFE2FFFF),
                                inactiveTrackColor: Color(0xFF8D8E98),
                              ),
                              child: Slider(
                                value: weight.toDouble(),
                                min: 5.0,
                                max: 140.0,
                                onChanged: (double newValue) {
                                  setState(() {
                                    weight = newValue.round();
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    //une texte field spécifique khdamto w dertp fi class bah tol n3aytolo w nevitiw bzf texte
                    Textfieldmedica(label: 'Surface coporelle'),
                    SizedBox(
                      height: 25.0,
                    ),
                  ],
                ),
                isActive: _currentStep >= 0,
                state:
                    _currentStep >= 0 ? StepState.complete : StepState.disabled,
              ),
              new Step(
                title: new Text('Medication'),
                content: Column(
                  children: <Widget>[
                    Textfieldmedica(label: 'Posologie'),
                    SizedBox(
                      height: 15.0,
                    ),
                    Textfieldmedica(label: 'Réduction'),
                  ],
                ),
                isActive: _currentStep >= 0,
                state:
                    _currentStep >= 1 ? StepState.complete : StepState.disabled,
              ),
              new Step(
                title: new Text('Résultat'),
                content: new Text('This is the third step.'),
                isActive: _currentStep >= 0,
                state:
                    _currentStep >= 2 ? StepState.complete : StepState.disabled,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
