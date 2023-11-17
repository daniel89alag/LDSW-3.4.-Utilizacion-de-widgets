import 'dart:convert';

import 'package:app_udg/columns.dart';
import 'package:app_udg/models/Gif.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(PantallaEjemplos());
}

class PantallaEjemplos extends StatelessWidget {
  Future<List<Gif>> _listadoGifs;

  Future<List<Gif>> _getGifs() async {
    final response = await http.get(
        "https://api.giphy.com/v1/gifs/trending?api_key=hJjRVxS74OTGVa6yWbSDdpQPPztZJKSd&limit=10&offset=0&rating=g&bundle=messaging_non_clips");

    List<Gif> gifs = [];

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);

      final jsonData = jsonDecode(body);

      for (var item in jsonData["data"]) {
        gifs.add(Gif(
            item["title"], item["images"]["fixed_height_downsampled"]["url"]));
      }

      return gifs;
    } else {
      throw Exception("Fallo la conexion");
    }
  }

  @override
  void initState() {
    super.initState();
    _listadoGifs = _getGifs();
  }

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
