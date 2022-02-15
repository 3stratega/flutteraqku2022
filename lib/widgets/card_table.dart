import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:productos_app/screens/comprar.dart';
import 'package:productos_app/screens/comprar_wallet.dart';

class CardTable extends StatelessWidget {
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
                  contentPadding: EdgeInsets.fromLTRB(15, 30, 25, 0),
                  title: Text('55 AQU',
                      style: TextStyle(color: Colors.black, fontSize: 35)),
                  subtitle: Text('Este es tu saldo'),
                  leading: Icon(
                    Icons.account_balance_wallet,
                    color: Colors.purple,
                    size: 50,
                  ),
                ),

                // Usamos una fila para ordenar los botones del card
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                        onPressed: () => {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Center(
                                      child: Text(
                                          'Aqui ira el formulario de solicitud de retiro'),
                                    );
                                  })
                            },
                        child: Text('Retirar')),
                    FlatButton(
                        onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ComprarWalletScreen()),
                              )
                            },
                        child: Text('Adquirir'))
                  ],
                )
              ],
            ),
          ),
          // _SigleCard(
          //     color: Colors.blue, icon: Icons.border_all, text: 'AQU 50'),
          // _SigleCard(
          //     color: Colors.pinkAccent,
          //     icon: Icons.car_rental,
          //     text: 'Transport'),
        ]),

        // TableRow(
        //   children: [
        //     _SigleCard( color: Colors.purple, icon: Icons.shop, text: 'Shopping' ),
        //     _SigleCard( color: Colors.purpleAccent, icon: Icons.cloud, text: 'Bill' ),
        //   ]
        // ),

        // TableRow(
        //   children: [
        //     _SigleCard( color: Colors.deepPurple, icon: Icons.movie, text: 'Entertainment' ),
        //     _SigleCard( color: Colors.pinkAccent, icon: Icons.food_bank_outlined, text: 'Grocery' ),
        //   ]
        // ),

        // TableRow(
        //   children: [
        //     _SigleCard( color: Colors.blue, icon: Icons.border_all, text: 'General' ),
        //     _SigleCard( color: Colors.pinkAccent, icon: Icons.car_rental, text: 'Transport' ),
        //   ]
        // ),
      ],
    );
  }
}

// class _SigleCard extends StatelessWidget {
//   final IconData icon;
//   final Color color;
//   final String text;

//   const _SigleCard(
//       {Key? key, required this.icon, required this.color, required this.text})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return _CardBackground(
//         child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         CircleAvatar(
//           backgroundColor: this.color,
//           child: Icon(
//             this.icon,
//             size: 35,
//             color: Colors.white,
//           ),
//           radius: 30,
//         ),
//         SizedBox(height: 10),
//         Text(
//           this.text,
//           style: TextStyle(color: this.color, fontSize: 18),
//         )
//       ],
//     ));
//   }
// }

// class _CardBackground extends StatelessWidget {
//   final Widget child;

//   const _CardBackground({Key? key, required this.child}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(15),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(20),
//         child: BackdropFilter(
//           filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//           child: Container(
//             height: 180,
//             decoration: BoxDecoration(
//                 color: Color.fromRGBO(225, 190, 231, 0.5),
//                 borderRadius: BorderRadius.circular(20)),
//             child: this.child,
//           ),
//         ),
//       ),
//     );
//   }
// }
