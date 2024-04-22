import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
          child: Text(
            'Welcome to Flutter',
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
