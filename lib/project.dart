// models/product.dart

import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product(this.name, this.description, this.price, this.imageUrl);
}

class ProductListScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final List<Product> _products = [
    Product('Blouse', 'Elegant silk blouse', 100.0, 'blouse.jpg'),
    Product('Dress', 'Vibrant summer dress', 150.0, 'dress.jpg'),
    Product('Pants', 'Casual cotton pants', 80.0, 'pants.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clothing App'),
      ),
      body: ListView.builder(
        itemCount: _products.length,
        itemBuilder: (context, index) {
          final product = _products[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(product: product),
                ),
              );
            },
            child: Card(
              child: ListTile(
                leading: Image.asset('assets/${product.imageUrl}'),
                title: Text(product.name),
                subtitle: Text(product.description),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  ProductDetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/${product.imageUrl}'),
            SizedBox(height: 16.0),
            Text(
              product.description,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Price: ${product.price.toStringAsFixed(2)} lei',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// main.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clothing App',
      home: ProductListScreen(),
    );
  }
}
