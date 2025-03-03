import 'package:e_commerce_app_assignment/model/product.dart';
import 'package:e_commerce_app_assignment/core/constants/strings.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final VoidCallback onTap;

  final Product product;
  const ProductCard({super.key, required this.onTap,required this.product});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(//spacing
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: product.bgColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center, // Centers the image
                child: Image.asset(
                  product.imageUrl,
                  fit: BoxFit.contain, // Ensures it fits well
                ),
              ),
            ),
            const SizedBox(height: 3,),
            Text(product.name,
                style: TextStyle(fontSize: 14, color: Colors.grey)),
            const SizedBox(height: 3,),
            Text(AppStrings.price,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
