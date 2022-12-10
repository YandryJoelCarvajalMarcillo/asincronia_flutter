import 'dart:async';
import 'dart:ffi';
import 'dart:math';

import 'package:tarea2_asincronia_animatedcontainer/services/mockapi.dart';
import 'package:flutter/material.dart';

class indexes extends StatefulWidget {
  const indexes({Key? key}) : super(key: key);
  @override
  Fordt createState() => Fordt();
}

class Fordt extends State<indexes> {
  double ancho = 0;
  int esres = 0;
  bool lectuon = false;
  Color paint = Colors.orange;
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
                color: Colors.orange,
                shape: CircleBorder(),
              ),
              //Icono del boton
              child: IconButton(
                icon: Icon(
                  Icons.airport_shuttle_rounded,
                  color: Colors.black,
                  size: 50.0,
                ),
                //contador
                color: Colors.white,
                onPressed: () async {
                  pebex();
                  esres = await MockApi().getHyundaiInteger() as int;
                  actuali();
                  await Future.delayed(Duration(seconds: 3));
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
                color: paint,
              ),
              duration: Duration(seconds: estirex ? 3 : 0),
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
                  color: Colors.orange),
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