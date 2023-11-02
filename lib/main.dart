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
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/fondo.jpg'), fit: BoxFit.cover),
                ),
                width: double.infinity,
                child: EjemploColumn())));
  }
}
