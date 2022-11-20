import 'package:flutter/material.dart';

import '../../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';
  const ProductDetailScreen(
    this.product, {
      super.key,
    }
  );

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 450,
              width: 300,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              '\$${product.price}',
              style: const TextStyle(
                color: Color.fromARGB(255, 170, 79, 79),
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                product.type,
                textAlign: TextAlign.center,
                softWrap: true,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 49, 105, 51),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                product.description,
                textAlign: TextAlign.center,
                softWrap: true,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],),
      ),
    );
  }
}