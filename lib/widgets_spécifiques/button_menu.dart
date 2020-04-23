import 'package:flutter/material.dart';
import 'package:medica/constantes.dart';

class button_menu extends StatelessWidget {
  button_menu(
      {@required this.nom_image, @required this.label, @required this.ontap});
  final String nom_image;
  final String label;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //la methode onTap sert a fait action listener
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.all(1.0),
        //je fais card au lieu container car il a une shadow
        child: Card(
          margin: EdgeInsets.all(9.0),
          //pour radius
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Image.asset('images/$nom_image.png'),
              ),
              SizedBox(height: 15.0),
              Expanded(
                flex: 1,
                child: Text(
                  label,
                  style: klabelTextStyle,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),

          // margin: EdgeInsets.all(15),
          //  decoration: BoxDecoration(
          //  borderRadius: BorderRadius.circular(15),
          //   color: Colors.white,
          // ),
        ),
      ),
    );
  }
}
