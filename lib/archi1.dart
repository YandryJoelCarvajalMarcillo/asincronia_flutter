import 'dart:async';
import 'dart:ffi';
import 'dart:math';

import 'package:tarea2_asincronia_animatedcontainer/services/mockapi.dart';
import 'package:flutter/material.dart';

class archi extends StatefulWidget {
  const archi({Key? key}) : super(key: key);
  @override
  Fordt createState() => Fordt();
}

class Fordt extends State<archi> {
  double ancho = 0;
  int esres = 0;
  bool lectuon = false;
  Color paint = Colors.redAccent;
  bool estirex = false;
  BorderRadiusGeometry borede = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Material(
      // color de fondo
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //caracerísticas del boton
            Ink(
              width: 90,
              height: 90,
              decoration: const ShapeDecoration(
                color: Colors.redAccent,
                shape: CircleBorder(),
              ),
              //Icono del boton 
              child: IconButton(
                icon: Icon(
                  Icons.directions_walk,
                  color: Colors.black,
                  size: 50.0,
                ),
                //contador
                color: Colors.white,
                onPressed: () async {
                  pebex();
                  esres = await MockApi().getFisherPriceInteger() as int;
                  actuali();
                  await Future.delayed(Duration(seconds: 10));

                  lectuon = true;
                },
              ),
            ),
            //espacios de relleno
            Padding(
              padding: EdgeInsets.all(
                  8.0),
              child: Text(""),
            ),
            //animación
            AnimatedContainer(
              width: estirex ? ancho : ancho,
              height: 15,

              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
              duration: Duration(seconds: estirex ? 10 : 0),
            ),
            Padding(
              padding: EdgeInsets.all(
                  8.0),
              child: Text(""),
            ),
            //color de boton
            Text(
              '${igal().toString()}',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.redAccent),
            ),
          ],
        ));
  }
  
  //parte animación
  actuali() {
    setState(() {
      ancho = 0;
      estirex = false;
    });
  }

  pebex() {
    setState(() {
      estirex = !estirex;
      ancho = 350;
    });
  }

  igal() {
    return esres;
  }
}