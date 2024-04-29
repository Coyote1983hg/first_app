
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beautiful!',
      theme: ThemeData(
        // Apply a theme with appropriate button styles and a custom blue color
        primarySwatch: Colors.blueGrey,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20.0), // Adjust font size as needed
          ),
        ),
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wawbaws'),
      ),
      body: Center(
        child: Image.asset('assets/brandmark-design-1800x0 (1).png'),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
        child: ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondScreen()),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 113, 173, 193), // Darker blue using RGB
          ),
          child: const Text('Click Me'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('We make you happy!'),
      ),
      body: Center(
        child: Image.asset('assets/brandmark-design (8).png'),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 212, 219, 77), // Darker blue using RGB
          ),
          child: const Text('Click Me'),
        ),
      ),
    );
  }
}
