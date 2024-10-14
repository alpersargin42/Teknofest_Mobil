import 'package:flutter/material.dart';

class NesneT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nesne Tespiti'),
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Text(
          'Nesne Tespiti',
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
