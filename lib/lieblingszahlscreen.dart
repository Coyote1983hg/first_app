
import 'package:flutter/material.dart';
class LieblingszahlScreen extends StatelessWidget {
  final int lieblingszahl;

  LieblingszahlScreen({required this.lieblingszahl});

  @override
  Widget build(BuildContext context) {
    // Hier wird der Inhalt des Screens definiert
    return Scaffold(
      appBar: AppBar(
        title: Text("Lieblingszahl"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Deine Lieblingszahl ist:",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              lieblingszahl.toString(),
              style: TextStyle(fontSize: 48),
            ),
          ],
        ),
      ),
    );
  }
}
