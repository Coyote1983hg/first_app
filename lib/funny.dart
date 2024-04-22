import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WAWBAWS',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isBlue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isBlue ? Colors.blue : Colors.yellow,
      appBar: AppBar(
        title: Text(
          'Wawbaws',
          style: TextStyle(
            color: Colors.red,
            backgroundColor: Colors.yellow,
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!_isBlue)
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 200,
              ),
            SizedBox(height: 200),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isBlue = !_isBlue;
                });
              },
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
