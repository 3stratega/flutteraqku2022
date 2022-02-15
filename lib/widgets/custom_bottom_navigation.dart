import 'package:flutter/material.dart';
import 'package:productos_app/providers/ui_provider.dart';
import 'package:productos_app/services/auth_service.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final authService = Provider.of<AuthService>(context, listen: false);

    final currentIndex = uiProvider.selectedMenuOpt;
    return BottomNavigationBar(
      onTap: (int i) => uiProvider.selectedMenuOpt = i,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.orange,
      backgroundColor: Color.fromRGBO(156, 39, 176, 1),
      unselectedItemColor: Color.fromRGBO(255, 255, 255, 1),
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Envio'),
        BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline_outlined), label: 'Cobro'),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.logout_rounded),
              onPressed: () {
                authService.logout();
                Navigator.pushReplacementNamed(context, 'login');
              },
            ),
            label: 'Salir'),
      ],
    );
  }
}
