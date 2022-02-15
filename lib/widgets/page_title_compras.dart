import 'package:flutter/material.dart';

class PageComprasTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Text('Hola Jesus',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(height: 10),
            Text('Adquiere tus AQU:',
                style: TextStyle(fontSize: 15, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
