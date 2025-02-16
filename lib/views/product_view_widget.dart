// // task 13 UI

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../models/product.dart';
// import '../providers/product_provider.dart';

// class ProductViewWidget extends StatelessWidget {
//   const ProductViewWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Product View Widget"),
//       ),
//       body: Consumer<Product>(
//         builder: (context, product, child) {
//           // fixed
//           if (product.isLoading) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (product.errorMessage != null) {
//             return Center(child: Text(product.errorMessage!));
//           } else if (product.products.isEmpty) {
//             return const Center(child: Text("No products available"));
//           }

//           return ListView.builder(
//             itemCount: product.products.length,
//             itemBuilder: (context, index) {
//               product product = product.products[index];
//               return Card(
//                 margin: const EdgeInsets.all(10),
//                 child: ListTile(
//                   leading: Image.network(
//                     product.image ?? "",
//                     width: 50,
//                     height: 50,
//                     fit: BoxFit.cover,
//                   ),
//                   title: Text(product.title ?? "No Title"),
//                   subtitle: Text("\$${product.price?.toStringAsFixed(2)}"),
//                   trailing: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Icon(Icons.star, color: Colors.orange, size: 20),
//                       Text(product.rating?.rate?.toStringAsFixed(1) ?? "N/A"),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
