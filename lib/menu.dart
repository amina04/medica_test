import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Text('icon1'),
                      Text('icon1'),
                    ],
                  ),
                ),
                Container()
              ],
            )
          ],
        ),
      ),
    );
  }
}
