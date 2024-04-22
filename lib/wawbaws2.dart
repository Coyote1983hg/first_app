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
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondScreen()),
          );
        },
        child: const Text('Go to Second Screen'),
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
        title: const Text('I am here for you'),
      ),
      body: Center(
        child: Image.asset('assets/brandmark-design (8).png'),
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go Back to First Screen'),
      ),
    );
  }
}
