
import 'package:flutter/material.dart';


void main() {
  runApp(MyClothingApp());
}

class MyClothingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magazin de Haine',
      theme: ThemeData(
        primaryColor: Colors.blue,
        secondaryHeaderColor: Colors.yellow,
      ),
      home: ClothingHomePage(),
    );
  }
}

class ClothingHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magazin de Haine'),
      ),
      body: ClothingList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aici puteți adăuga acțiuni pentru butonul de floating
          print('Butonul a fost apăsat!');
        },
        backgroundColor: Colors.yellow,
        child: Icon(Icons.add),
      ),
    );
  }
}

class ClothingList extends StatelessWidget {
  final List<String> clothes = ['Tricou', 'Bluză', 'Pantaloni', 'Fustă', 'Geacă'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: clothes.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(clothes[index]),
          onTap: () {
            // Aici puteți adăuga logica pentru afișarea detaliilor fiecărui element de îmbrăcăminte
            // sau pentru a adăuga elementul în coșul de cumpărături, de exemplu
            print('Ai apăsat pe ${clothes[index]}');
          },
        );
      },
    );
  }
}
