import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Caja extends StatelessWidget {
  Color color;
  int numero;
  double ancho;

  Caja(this.color, this.numero, this.ancho);

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.ancho,
      height: this.ancho,
      color: this.color,
      child: Center(
        child: Text(
          this.numero.toString(),
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}
