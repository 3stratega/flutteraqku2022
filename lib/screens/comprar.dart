import 'package:flutter/material.dart';
import 'package:productos_app/widgets/aqku_table.dart';
import 'package:productos_app/widgets/page_title_compras.dart';

class ComprarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [PageComprasTitle(), AqkuTable()]));
  }
}
