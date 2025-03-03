import 'package:e_commerce_app_assignment/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app_assignment/model/product.dart';

class ProductActions extends StatelessWidget {

  final Product product;
  const ProductActions({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Quantity Selector with Favorite
              Row(
                children: [
                  _buildQuantityButton(Icons.remove),
                  const SizedBox(width: 8),
                  const Text("01",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 8),
                  _buildQuantityButton(Icons.add),
                  const Spacer(),
                  _buildFavouritesButton(Icons.add),

                ],
              ),
              const SizedBox(height: 30),
              // Cart and Buy Now Button both here
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildIconButton(Icons.add_shopping_cart_outlined,
                      product.bgColor, true),
                  const SizedBox(width: 10),
                  Expanded(child: _buildBuyNowButton()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuantityButton(IconData icon) {
    return SizedBox(
      width: 40,
      height: 30,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),side: BorderSide(color: Colors.grey)),
        ),
        child: Icon(icon, color: Colors.black),
      ),
    );
  }
  Widget _buildFavouritesButton(IconData icon) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.red
      ),
      child: Icon(Icons.favorite,color: Colors.white,),
    );
  }
  Widget _buildIconButton(IconData icon, Color color, bool outlined) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(22),
        color: Colors.transparent,
      ),
      child: IconButton(
        icon: Icon(icon, color: color),
        onPressed: () {},
      ),
    );
  }

  Widget _buildBuyNowButton() {
    return Container(
      decoration: BoxDecoration(
        color: product.bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      alignment: Alignment.center,
      child: const Text(
        AppStrings.buynow,
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
