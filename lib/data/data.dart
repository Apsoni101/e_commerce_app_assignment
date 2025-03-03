import 'package:e_commerce_app_assignment/core/constants/app_colors.dart';
import 'package:e_commerce_app_assignment/model/product.dart';
import 'package:flutter/material.dart';

class ProductData {
  static List<Product> productsList = [
    Product(
      name: "Office Code",
      category: "Hand bag",
      imageUrl: "assets/images/handbag1.png",
      availableColors: [Colors.blue, Colors.black, Colors.red],
      size: "M",
      bgColor: AppColors.handbag1,
    ),
    Product(
      name: "Belt Bag",
      category: "Hand bag",
      imageUrl: "assets/images/handbag2.png",
      availableColors: [Colors.brown, Colors.orange],
      size: "L",
      bgColor: AppColors.handbag2,
    ),
    Product(
      name: "Hang Top",
      category: "Hand bag",
      imageUrl: "assets/images/handbag3.png",
      availableColors: [Colors.black, Colors.grey],
      size: "S",
      bgColor: AppColors.handbag3,
    ),
    Product(
      name: "Old Fashion",
      category: "Hand bag",
      imageUrl: "assets/images/handbag4.png",
      availableColors: [Colors.orange, Colors.brown.shade200],
      size: "M",
      bgColor: AppColors.handbag4,
    ),
    Product(
      name: "Office Code",
      category: "Hand bag",
      imageUrl: "assets/images/handbag5.png",
      availableColors: [Colors.pink, Colors.red],
      size: "M",
      bgColor: AppColors.handbag5,
    ),
    Product(
      name: "Office Code",
      category: "Hand bag",
      imageUrl: "assets/images/handbag6.png",
      availableColors: [Colors.black, Colors.grey],
      size: "L",
      bgColor: AppColors.handbag6,
    ),
  ];
}
