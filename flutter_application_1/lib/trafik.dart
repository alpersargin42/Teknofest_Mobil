import 'package:flutter/material.dart';

class Trafik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trafik İşaretleri'),
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Text(
          'Trafik İşaretleri Tespiti',
          style: TextStyle(
            fontSize: 32, // Yazı boyutu
            fontWeight: FontWeight.bold, // Kalın yazı
            color: Colors.black, // Yazı rengi
          ),
        ),
      ),
    );
  }
}
