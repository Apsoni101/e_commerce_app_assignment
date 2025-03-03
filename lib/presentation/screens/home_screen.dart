import 'package:e_commerce_app_assignment/presentation/screens/product_list_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart'; // Import your custom app bar

const List<String> categories = ['Hand bag', 'Jewellery', 'Footwear', 'Dresses'];//global

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Women',
          showBottom: true,
          categories: categories,
        ),
        backgroundColor: Colors.white,
        body: TabBarView(
          children: [
            const ProductListScreen(),
            for (int i = 1; i < categories.length; i++)
              Center(child: Text(categories[i])),
          ],
        ),
      ),
    );
  }
}
