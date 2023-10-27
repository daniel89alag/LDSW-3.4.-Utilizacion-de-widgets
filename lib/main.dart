import 'package:app_udg/columns.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PantallaEjemplos());
}

class PantallaEjemplos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'LDSW 3.4. Utilización de widgets',
        home: Scaffold(
            body: Container(
          width: double.infinity,
          color: Colors.black,
          child: EjemploColumn(),
        )));
  }
}
