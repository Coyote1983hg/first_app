import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        
        body: Center(
          child: Image(
            image: AssetImage('assets/bg_mainscreen.png'),
          
            
              
            
            ),
          ),
        ),
      );
    
  }
}
