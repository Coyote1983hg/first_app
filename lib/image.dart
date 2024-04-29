import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Stack(
          children: [
            // Background image that fills the entire screen
            SizedBox.expand(
              child: Image.asset(
                'assets/bg_mainscreen.png',
                fit: BoxFit.cover,
              ),
            ),
            // Draggable image
            Positioned(
              top: 50.0,
              left: 50.0,
              child: Draggable(
                child: Image.asset(
                  'assets/chick cupcakes_3D.png', // Updated the path
                  width: 300.0,
                  height: 300.0,
                ),
                childWhenDragging: SizedBox(
                  width: 300.0,
                  height: 700.0,
                  child: Image.asset(
                    'assets/brandmark-design (4).png',
                    
                    
                  ),
                ),
                feedback: Container(
                  width: 0.0,
                  height: 0.0,
                  child: Image.asset(
                    'assets/images/chick_cupcakes_3D.png', // Updated the path
                    fit: BoxFit.cover,
                  ),
                ),
                onDragEnd: (details) {
                  // Handle drag completion (optional)
                },
              ),
            ),
            // Container with transparent background and content
            Positioned(
              left: 16.0,
              right: 16.0,
              bottom: 40.0,
              child: Container(
                height: 200.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 217, 30, 195),
                      Color.fromARGB(255, 47, 144, 209),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Feeling Snackish Today?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                      Text(
                        'Explore Giorgio\'s most popular snack selection and get instantly happy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        'Have a nice day!!!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Handle button press
                        },
                        child: Text('Explore Snacks'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          side: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

