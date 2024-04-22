import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _imageSize = 200.0;

  void _increaseImageSize() {
    setState(() {
      _imageSize *= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Puppy Image Resizer',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Puppy Image Resizer'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/puppy.jpg',
                width: _imageSize,
                height: _imageSize,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _increaseImageSize,
                child: Text('Increase Image Size'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
