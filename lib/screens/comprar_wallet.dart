import 'package:flutter/material.dart';
import 'package:productos_app/providers/ui_provider.dart';
import 'package:productos_app/screens/comprar.dart';
import 'package:productos_app/screens/configuraruser_screen.dart';
import 'package:productos_app/screens/screens.dart';
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

class ComprarWalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Background(),
          // Home Body
          _ComprarBody()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.navigate_before_rounded),
      ),
    );
  }
}

class _ComprarBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Titulos
          ComprarScreen()
        ],
      ),
    );
  }
}
