// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_little_shop/Controllers/product_controller.dart';
import 'package:your_little_shop/Utilities/app_colors.dart';

import 'package:your_little_shop/Utilities/dimensions.dart';
import 'package:your_little_shop/Utilities/small_text.dart';

import '../Models/fetch_Products.dart';

class Categories extends StatefulWidget {
  final List<ProductModel> productList;
  final ProductModel product;
  const Categories({Key? key, required this.product, required this.productList})
      : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final categoriesController = Get.find<ProductController>();
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35,
        width: Dimensions.screenWidth,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return _buildPageItem(index);
            }));
  }

  Widget _buildPageItem(int index) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 20,
      width: 170,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[400]?.withOpacity(0.4)),
      child: SmallText(
        color: AppColors.mainappColor,
        text: widget.product.category.toString(),
        size: 18,
      ),
    );
  }
}
