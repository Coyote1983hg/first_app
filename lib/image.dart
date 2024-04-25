import'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Stack( // Use Stack for image superposition
          children: [
            // Background image
            Image.asset(
              'assets/bg_mainscreen.png',
              fit: BoxFit.contain, // Adjust as needed (cover, fill, etc.)
            ),
            // Draggable image (replace 'assets/draggable_image.png' with your path)
            Positioned(
              top: 50.0, // Adjust positioning as desired
              left: 50.0, // Adjust positioning as desired
              child: Draggable(
                child: Image.asset(
                  'assets/chick cupcakes_3D.png',
                  width: 500.0, // Adjust size as needed
                  height: 500.0, // Adjust size as needed
                ),
                childWhenDragging: SizedBox(
                  // Optional visual feedback during drag
                  width:1000.0,
                  height: 1000.0,
                  child: Icon(
                    Icons.image,
                    color: Colors.grey,
                    size: 100.0,
                  ),
                ),
                feedback: Container(
                  // Optional visual feedback during drag (optional)
                  width: 300.0,
                  height: 300.0,
                  child: Icon(
                    Icons.image,
                    color: Colors.blue,
                    size: 50.0,
                  ),
                ),
                onDragEnd: (details) {
                  // Handle drag completion (optional)
                },
              ),
            ),
            // Container with transparent background and content (moved up)
            Positioned(
              left: 16.0, // Adjust positioning as desired
              right: 16.0, // Align to edges horizontally
              top: MediaQuery.of(context).size.height - 240.0, // Position near bottom
              child: Container(
                height: 200.0, // Adjust container height
                width: double.infinity, // Match parent width for full width
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0), // Add rounded corners
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(0, 94, 82, 82).withOpacity(0.28),
                      Color.fromARGB(88, 102, 95, 95),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0), // Add padding
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align content vertically
                    children: [
                      Text(
                        'Feeling Snackish Today?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                      Text(
                        'Explore Giorgio most popular snack selection and get instantly happy',
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
                        child: Text('Order Now'),
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
