import 'package:flutter/material.dart';

class Konum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konum'),
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Text(
          'Konum Gönderiliyor',
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
