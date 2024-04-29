import 'package:flutter/material.dart';


  

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Trei Ecrane',
      initialRoute: '/',
      routes: {
        '/': (context) => GoodMorningScreen(),
        '/have-a-great-day': (context) => HaveAGreatDayScreen(),
        '/i-love-you': (context) => ILoveYouScreen(),
      },
    );
  }
}

class GoodMorningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'Good morning!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/have-a-great-day');
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

class HaveAGreatDayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text(
          'Have a nice day!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/i-love-you');
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

class ILoveYouScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          'Wawbaws!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}