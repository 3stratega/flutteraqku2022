import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:productos_app/widgets/pagos_aqu.dart';

class AqkuTable extends StatelessWidget {
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
            margin: EdgeInsets.all(15),

            // Con esta propiedad agregamos elevación a nuestro card
            // La sombra que tiene el Card aumentará
            elevation: 10,

            // La propiedad child anida un widget en su interior
            // Usamos columna para ordenar un ListTile y una fila con botones
            child: Column(
              children: <Widget>[
                // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 40, 20),
                  title: Text('100 AQU',
                      style: TextStyle(color: Colors.black, fontSize: 35)),
                  subtitle: Text('100 USD (Valor en USDT)'),
                  leading: Icon(
                    Icons.add_circle_sharp,
                    color: Colors.white,
                    size: 50,
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return CompraAqu();
                            // return Center(
                            //   child: Text(
                            //       'Aqui ira el QR de la wallet para transferir'),
                            // );
                          });
                    },
                    icon: Icon(
                      Icons.add_circle_sharp,
                      color: Colors.purple,
                      size: 60,
                    ),
                  ),
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
            margin: EdgeInsets.all(15),

            // Con esta propiedad agregamos elevación a nuestro card
            // La sombra que tiene el Card aumentará
            elevation: 10,

            // La propiedad child anida un widget en su interior
            // Usamos columna para ordenar un ListTile y una fila con botones
            child: Column(
              children: <Widget>[
                // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 40, 20),
                  title: Text('500 AQU',
                      style: TextStyle(color: Colors.black, fontSize: 35)),
                  subtitle: Text('500 USD (Valor en USDT)'),
                  leading: Icon(
                    Icons.add_circle_sharp,
                    color: Colors.white,
                    size: 50,
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return CompraAqu();
                          });
                    },
                    icon: Icon(
                      Icons.add_circle_sharp,
                      color: Colors.purple,
                      size: 60,
                    ),
                  ),
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
            margin: EdgeInsets.all(15),

            // Con esta propiedad agregamos elevación a nuestro card
            // La sombra que tiene el Card aumentará
            elevation: 10,

            // La propiedad child anida un widget en su interior
            // Usamos columna para ordenar un ListTile y una fila con botones
            child: Column(
              children: <Widget>[
                // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 40, 20),
                  title: Text('1000 AQU',
                      style: TextStyle(color: Colors.black, fontSize: 35)),
                  subtitle: Text('1000 USD (Valor en USDT)'),
                  leading: Icon(
                    Icons.add_circle_sharp,
                    color: Colors.white,
                    size: 50,
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return CompraAqu();
                          });
                    },
                    icon: Icon(
                      Icons.add_circle_sharp,
                      color: Colors.purple,
                      size: 60,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ],
    );
  }
}

//Ejemplo inicial de card 

// TableRow(children: [
//           Card(
//             // Con esta propiedad modificamos la forma de nuestro card
//             // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

//             // Con esta propiedad agregamos margen a nuestro Card
//             // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
//             margin: EdgeInsets.all(15),

//             // Con esta propiedad agregamos elevación a nuestro card
//             // La sombra que tiene el Card aumentará
//             elevation: 10,

//             // La propiedad child anida un widget en su interior
//             // Usamos columna para ordenar un ListTile y una fila con botones
//             child: Column(
//               children: <Widget>[
//                 // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
//                 ListTile(
//                   contentPadding: EdgeInsets.fromLTRB(15, 10, 15, 0),
//                   title: Text('500 AQU',
//                       style: TextStyle(color: Colors.black, fontSize: 35)),
//                   subtitle: Text('500 USD (Valor en USDT)'),
//                   leading: Icon(
//                     Icons.add_circle_sharp,
//                     color: Colors.purple,
//                     size: 50,
//                   ),
//                 ),

//                 // Usamos una fila para ordenar los botones del card
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     FlatButton(onPressed: () => {}, child: Text('Adquirir')),
//                     // FlatButton(onPressed: () => {}, child: Text('Depositar'))
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ]),

//Row inicial

                // Usamos una fila para ordenar los botones del card
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: <Widget>[
                //     FlatButton(onPressed: () => {}, child: Text('Adquirir')),
                //     // FlatButton(onPressed: () => {}, child: Text('Depositar'))
                //   ],
                // )