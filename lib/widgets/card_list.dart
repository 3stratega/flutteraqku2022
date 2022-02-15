import 'dart:ui';

import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          Card(
            // Con esta propiedad modificamos la forma de nuestro card
            // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

            // Con esta propiedad agregamos margen a nuestro Card
            // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
            margin: EdgeInsets.all(10),

            // Con esta propiedad agregamos elevación a nuestro card
            // La sombra que tiene el Card aumentará
            elevation: 10,

            // La propiedad child anida un widget en su interior
            // Usamos columna para ordenar un ListTile y una fila con botones
            child: Column(
              children: <Widget>[
                // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                  title: Text('Retiro de AQU',
                      style: TextStyle(color: Colors.black, fontSize: 15)),
                  subtitle: Text('02/01/2022'),
                  leading: Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.red,
                    size: 60,
                  ),
                  trailing:
                      Text('- 50 AQU', style: TextStyle(color: Colors.red)),
                ),
              ],
            ),
          ),
        ]),
        TableRow(children: [
          Card(
            // Con esta propiedad modificamos la forma de nuestro card
            // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

            // Con esta propiedad agregamos margen a nuestro Card
            // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
            margin: EdgeInsets.all(10),

            // Con esta propiedad agregamos elevación a nuestro card
            // La sombra que tiene el Card aumentará
            elevation: 10,

            // La propiedad child anida un widget en su interior
            // Usamos columna para ordenar un ListTile y una fila con botones
            child: Column(
              children: <Widget>[
                // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                  title: Text('Rendimiento Enero',
                      style: TextStyle(color: Colors.black, fontSize: 15)),
                  subtitle: Text('01/01/2022'),
                  leading: Icon(
                    Icons.arrow_drop_up_sharp,
                    color: Colors.green,
                    size: 60,
                  ),
                  trailing:
                      Text('+ 5 AQU', style: TextStyle(color: Colors.green)),
                ),
              ],
            ),
          ),
        ]),
        TableRow(children: [
          Card(
            // Con esta propiedad modificamos la forma de nuestro card
            // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

            // Con esta propiedad agregamos margen a nuestro Card
            // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
            margin: EdgeInsets.all(10),

            // Con esta propiedad agregamos elevación a nuestro card
            // La sombra que tiene el Card aumentará
            elevation: 10,

            // La propiedad child anida un widget en su interior
            // Usamos columna para ordenar un ListTile y una fila con botones
            child: Column(
              children: <Widget>[
                // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                  title: Text('Adquisicíon de AQU',
                      style: TextStyle(color: Colors.black, fontSize: 15)),
                  subtitle: Text('30/12/2021'),
                  leading: Icon(
                    Icons.arrow_drop_up_sharp,
                    color: Colors.green,
                    size: 60,
                  ),
                  trailing:
                      Text('+ 100 AQU', style: TextStyle(color: Colors.green)),
                ),
              ],
            ),
          ),
        ]),
      ],
    );
  }
}
