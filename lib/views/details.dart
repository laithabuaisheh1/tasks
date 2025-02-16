import 'package:flutter/material.dart';
import 'package:tasks/models/product.dart';
import 'package:tasks/providers/product_provider.dart';

class Details extends StatelessWidget {
  final Product product;
  const Details({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Details")),
        // 1 title  text
        // 2 image image . network
        // 3 price text string
        // 4 description string
        // 5 category string
        // 6 rating string
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.title ?? "No Title"),
                Image.network(
                  product.image ?? "",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Text("\$${product.price?.toStringAsFixed(2)}"),
                Text(product.description ?? "No Description"),
                Text(product.category ?? "No Category"),
                Text(product.rating?.rate?.toStringAsFixed(1) ?? "N/A"),
              ],
            ),
          ],
        ));
  }
}
