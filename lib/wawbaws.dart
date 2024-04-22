import 'package:flutter/material.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var title = 'Beautiful!!!';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Image.network('https://images.pexels.com/photos/11394299/pexels-photo-11394299.jpeg?auto=compress&cs=tinysrgb&w=800'),
      ),
    );
  }
}