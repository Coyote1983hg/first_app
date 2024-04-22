import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Bar Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button Bar Example'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Acțiune pentru primul buton
                },
                child: Text('Button 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Acțiune pentru al doilea buton
                },
                child: Text('Button 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Acțiune pentru al treilea buton
                },
                child: Text('Button 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
