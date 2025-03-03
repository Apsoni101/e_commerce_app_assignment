import 'package:flutter/material.dart';
import 'package:e_commerce_app_assignment/model/product.dart';
import 'package:e_commerce_app_assignment/core/constants/strings.dart';

class ProductHeader extends StatelessWidget {
  final Product product;

  const ProductHeader({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height:250,
      child: Container(
        color: product.bgColor,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children:[
            Positioned(
              bottom: -55,
              right:0 ,
              child: Image.asset(
                product.imageUrl,
                width: 250,
                height: 250,
              ),
            ),
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStrings.title, style: TextStyle(color: Colors.white, fontSize: 14)),
              Text(product.name, style: TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold)),
              SizedBox(height: 57),
              Text(AppStrings.pricetxt, style: TextStyle(color: Colors.white, fontSize: 14)),
              Text(AppStrings.price, style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
            ],

          ),
        ]
        ),
      ),
    );
  }
}
