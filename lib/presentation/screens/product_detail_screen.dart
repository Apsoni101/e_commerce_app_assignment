import 'package:e_commerce_app_assignment/presentation/widgets/custom_app_bar.dart';
import 'package:e_commerce_app_assignment/presentation/widgets/product_actions.dart';
import 'package:e_commerce_app_assignment/presentation/widgets/product_details.dart';
import 'package:e_commerce_app_assignment/presentation/widgets/product_header.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app_assignment/model/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: product.bgColor,
      ),
      backgroundColor: product.bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // Ensures children take full width
        children: [
          ProductHeader(product: product,), // Product Title & Image & price
          ProductDetails(), // Product Details
          ProductActions(product: product,), // Quantity Selector & Buy Button
        ],
      ),
    );
  }
}
