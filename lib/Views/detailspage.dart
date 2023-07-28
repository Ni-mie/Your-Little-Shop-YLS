// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_little_shop/Controllers/product_controller.dart';
import 'package:your_little_shop/Utilities/app_colors.dart';
import 'package:your_little_shop/Utilities/big_text.dart';
import 'package:your_little_shop/Utilities/dimensions.dart';
import 'package:your_little_shop/Utilities/expandabletextwidget.dart';
import 'package:your_little_shop/Utilities/icons.dart';
import 'package:your_little_shop/Utilities/small_text.dart';

import '../Models/fetch_Products.dart';

class DetailsPage extends StatefulWidget {
  final ProductModel product;
  DetailsPage({Key? key, required this.product}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final detailsController = Get.find<ProductController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: <Widget>[
            Container(
              height: 880,
              padding: EdgeInsets.fromLTRB(0, 50, 0, 30),
            ),
            Positioned(
              //For The Image
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                width: Dimensions.screenWidth,
                height: 500,
                padding: EdgeInsets.fromLTRB(0, 50, 0, 30),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(widget.product.image),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
            Positioned(
              //For Icons
              //
              top: 45,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.pop(context, '/fourth');
                    },
                    child: AppIcon(
                      icon: Icons.arrow_back_ios,
                      size: 12,
                      color: AppColors.textheadingwhiteColor,
                    ),
                  ),
                  AppIcon(
                    icon: Icons.shopping_cart,
                    size: 12,
                    color: AppColors.textheadingwhiteColor,
                  ),
                ],
              ),
            ),
            Positioned(
                //Container Content
                left: 0,
                right: 0,
                top: 500,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      BigText(
                        color: AppColors.textheadingColor,
                        text: widget.product.title,
                        size: 20,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SmallText(
                          text: widget.product.rating.toString(),
                          size: 14,
                          color: AppColors.textheadingColor),
                      SizedBox(
                        width: 280,
                      ),
                      BigText(
                          color: AppColors.mainappColor,
                          text: '\$' + widget.product.price.toString()),
                      SizedBox(
                        height: 10,
                      ),
                      ExpandableText(text: widget.product.description),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: 400,
                        margin: EdgeInsets.all(10),
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 135),
                        decoration: BoxDecoration(
                          color: AppColors.mainappColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: BigText(
                          text: 'Buy Now',
                          size: 20,
                          color: AppColors.textheadingwhiteColor,
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
