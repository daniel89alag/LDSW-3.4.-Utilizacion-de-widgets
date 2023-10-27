import 'package:app_udg/caja.dart';
import 'package:flutter/material.dart';

class EjemploColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Caja(Colors.red, 1, 100.0),
        Caja(Colors.green, 2, 100.0),
        Caja(Colors.blue, 3, 100.0),
        Caja(Colors.pink, 4, 100.0),
        Caja(Colors.yellow, 5, 100.0),
      ],
    );
  }
}
