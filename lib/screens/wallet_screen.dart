import 'package:flutter/material.dart';
import 'package:productos_app/widgets/card_list.dart';
import 'package:productos_app/widgets/card_table.dart';
import 'package:productos_app/widgets/page_title.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Titulos
          PageTitle(),

          // Card Table
          CardTable(),

          SizedBox(height: 20),

          Text(
            'Transacciones de tu cuenta:',
            style: TextStyle(fontSize: 15),
          ),

          SizedBox(height: 20),

          CardList(),
        ],
      ),
    );
  }
}
