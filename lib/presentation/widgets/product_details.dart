import 'package:e_commerce_app_assignment/core/constants/strings.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppStrings.color, style: TextStyle(fontSize: 16, color: Colors.grey)),
                  Row(
                    children: [
                      Container(decoration: BoxDecoration(border: Border.all(color: Colors.blue,width: 2),shape: BoxShape.circle),padding: EdgeInsets.all(2),child: CircleAvatar(backgroundColor: Colors.blue, radius: 8)),
                      SizedBox(width: 10),
                      CircleAvatar(backgroundColor: Colors.orange, radius: 10),
                      SizedBox(width: 10),
                      CircleAvatar(backgroundColor: Colors.grey, radius: 10),],
                  )
                ],
              ),
              SizedBox(width: 150,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppStrings.size, style: TextStyle(fontSize: 16, color: Colors.grey)),
                  Text(AppStrings.size8, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ],
              )
              ],
          ),
          SizedBox(height: 20),
          Text(
            AppStrings.productDescription,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
