import 'package:flutter/material.dart';
import 'nesne.dart';
import 'konum.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smartguard Kask',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/nesne': (context) => Nesne(),
        '/konum': (context) => Konum(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smartguard Kask', style: TextStyle(color: Colors.blue[800])),
        backgroundColor: Colors.transparent,
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Logo Görselleri
                ...List.generate(4, (index) => SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.4,
                  child: Image.asset('assets/logo${index + 1}.png'),
                )),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.width * 0.2,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/nesne'); 
                  },
                  child: Text('Nesne Tespiti'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.width * 0.2,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/konum'); 
                  },
                  child: Text('Konum Tespiti'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
