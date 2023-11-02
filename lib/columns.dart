import 'package:app_udg/caja.dart';
import 'package:flutter/material.dart';

class EjemploColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Caja(Colors.red, Text('Aplicación de prueba udg'), 100.0),
        Caja(Colors.transparent, Text('Bienvenido a esta aplicación de prueba'),
            100.0),
      ],
    );
  }
}
