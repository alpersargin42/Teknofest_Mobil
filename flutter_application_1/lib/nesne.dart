import 'package:flutter/material.dart';

class Nesne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seçiniz'),
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Trafik İşaretleri Butonu
            SizedBox(
              width: 200, 
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue[800]),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/trafik'); // Trafik işaretleri yönlendirmesi
                },
                child: Text('Trafik İşaretleri', style: TextStyle(fontSize: 18)),
              ),
            ),
            SizedBox(height: 20), 
            // Nesne Tespiti Butonu
            SizedBox(
              width: 200, 
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue[800]),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/nesnet'); // Nesne tespiti yönlendirmesi
                },
                child: Text('Nesne Tespiti', style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
