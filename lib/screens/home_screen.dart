import 'package:flutter/material.dart';
import 'package:productos_app/providers/ui_provider.dart';
import 'package:productos_app/screens/comprar.dart';
import 'package:productos_app/screens/configuraruser_screen.dart';
import 'package:productos_app/screens/wallet_screen.dart';
import 'package:productos_app/widgets/background.dart';
import 'package:productos_app/widgets/card_table.dart';
import 'package:productos_app/widgets/custom_bottom_navigation.dart';
import 'package:productos_app/widgets/page_title.dart';
import 'package:productos_app/widgets/widgets.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';

// import 'package:productos_app/models/models.dart';
// import 'package:productos_app/screens/screens.dart';

// import 'package:productos_app/services/services.dart';
// import 'package:productos_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Background(),
          // Home Body
          _HomeBody()
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOpt;
    switch (currentIndex) {
      case 0:
        return WalletScreen();
      case 1:
        return ComprarScreen();
      default:
        return WalletScreen();

      // SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       // Titulos
      //       PageTitle(),

      //       // Card Table
      //       CardTable(),

      //       SizedBox(height: 20),

      //       Text(
      //         'Transacciones de tu cuenta:',
      //         style: TextStyle(fontSize: 15),
      //       ),

      //       SizedBox(height: 20),

      //       CardList(),
      //     ],
      //   ),
      // );
    }
  }
}
