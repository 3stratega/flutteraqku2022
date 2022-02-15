import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class CompraAqu extends StatefulWidget {
  @override
  _CompraAquState createState() => _CompraAquState();
}

class _CompraAquState extends State<CompraAqu> {
  // TextEditingController _textController = TextEditingController();

  // This key will be used to show the snack bar
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  // This function is triggered when the copy icon is pressed
  Future<void> _copyToClipboard() async {
    await Clipboard.setData(
        ClipboardData(text: 'TXShFkusWS5pQp67jdVxDFXrVXsiAmFVaW'));
    _scaffoldKey.currentState!.showSnackBar(SnackBar(
      content: Text('Copiado en Portapapeles'),
    ));
  }
  // bool _isLoading = false;
  // bool _isSended = false;

  // Widget _resendEmailButton() {
  //   return Column(
  //     children: <Widget>[
  //       Text('No recbiste nuestro email ?'),
  //       FlatButton(
  //           child: Text(_isLoading ? 'Enviando' : 'Reenviar'),
  //           onPressed: () async {
  //             setState(() => _isLoading = true);
  //             final auth = Provider.of<AuthProvider>(context, listen: false);
  //             await auth.resendEmailVerif();

  //             setState(() {
  //               _isLoading = false;
  //               _isSended = true;
  //             });
  //           })
  //     ],
  //   );
  //}

  // Widget _resendEmailMsg() {
  //   return Container(
  //     child: Text(
  //       'Email enviando!',
  //       style: TextStyle(color: Colors.green),
  //     ),
  //   );
  // }

  // Widget _bottonWidget() {
  //   return _isSended ? _resendEmailMsg() : _resendEmailButton();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Aquirir AQU'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(30),
          child: Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.qr_code, size: 100),
                SizedBox(height: 20),
                Text(
                  'Transfiere a esta wallet USDT - TRC20',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                TextField(
                  enableInteractiveSelection: false,
                  decoration: InputDecoration(
                    hintText: 'TXShFkusWS5pQp67jdVxDFXrVXsiAmFVaW',
                    icon: IconButton(
                      icon: Icon(Icons.copy),
                      onPressed: _copyToClipboard,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Divider(
                  height: 40,
                  indent: 50,
                  endIndent: 50,
                ),
                Text(
                  'Porfavor luego de realizar el envio, envianos la captura por WhatsApp. Tu saldo llegará en un plazo max. de 24h',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.phonelink_ring),
                      iconSize: 28,
                    ),
                    Text('Enviar a WhatsApp')
                  ],
                )
              ],
            ),
          ),
        )));
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     height: MediaQuery.of(context).size.height / 1.2,
  //     decoration: BoxDecoration(
  //         color: Theme.of(context).scaffoldBackgroundColor,
  //         borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
  //     child: Stack(
  //       children: <Widget>[
  //         Container(
  //           alignment: Alignment.topCenter,
  //           padding: EdgeInsets.all(10),
  //           child: Icon(Icons.drag_handle),
  //         ),
  //         Align(
  //           alignment: Alignment.center,
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: <Widget>[
  //               Icon(Icons.qr_code, size: 100),
  //               SizedBox(height: 20),
  //               Text(
  //                 'Transfiere a esta wallet USDT - TRC20',
  //                 style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
  //               ),
  //               SizedBox(height: 30),
  //               Divider(
  //                 height: 40,
  //                 indent: 50,
  //                 endIndent: 50,
  //               ),

  //               Text(
  //                 'TXShFkusWS5pQp67jdVxDFXrVXsiAmFVaW',
  //                 textAlign: TextAlign.center,
  //               ),

  //               SizedBox(height: 30),
  //               Divider(
  //                 height: 40,
  //                 indent: 50,
  //                 endIndent: 50,
  //               ),
  //               Text(
  //                 'Porfavor luego de realizar el envio, envianos la captura por WhatsApp. Tu saldo llegará en un plazo max. de 24h',
  //                 textAlign: TextAlign.center,
  //                 style: TextStyle(fontStyle: FontStyle.italic),
  //               ),
  //               Divider(height: 40, indent: 50, endIndent: 50),
  //               // _bottonWidget(),
  //             ],
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }
}
