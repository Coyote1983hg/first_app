import 'package:flutter/material.dart';




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image(
            image: AssetImage('assets/bg_mainscreen.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
