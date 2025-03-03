import 'package:e_commerce_app_assignment/model/product.dart';
import 'package:e_commerce_app_assignment/data/data.dart';
import 'package:e_commerce_app_assignment/presentation/widgets/product_card.dart';
import 'package:e_commerce_app_assignment/presentation/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  //onTap of product item
  void _onProductTap(BuildContext context, Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailScreen(product: product),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(20.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: ProductData.productsList.length, // Use actual list length
      itemBuilder: (context, index) {
        final  item = ProductData.productsList[index];
        return ProductCard(
          onTap: () => _onProductTap(context, item),
          product: item,
        );
      },
    );
  }
}
