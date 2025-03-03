import 'package:flutter/material.dart';

class Product {
  final String name;
  final String category;
  final String imageUrl;
  final List<Color> availableColors;
  final String size;
  final Color bgColor;

  Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.availableColors,
    required this.size,
    required this.bgColor,
  });
}
