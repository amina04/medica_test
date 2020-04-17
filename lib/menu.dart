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
                      Text('chooofi tra akatbi nti f text 2 em'),
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
