// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:your_little_shop/Controllers/product_controller.dart';
import 'package:your_little_shop/Utilities/app_colors.dart';
import 'package:your_little_shop/Utilities/big_text.dart';
import 'package:your_little_shop/Utilities/dimensions.dart';
import 'package:your_little_shop/Utilities/expandabletextwidget.dart';
import 'package:your_little_shop/Utilities/small_text.dart';

class HomePageBody extends StatefulWidget {
  HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (productController.isLoading.value)
        return Center(child: CircularProgressIndicator());
      else {
        return Container(
            height: 4100,
            width: Dimensions.screenWidth,
            child: StaggeredGridView.countBuilder(
                staggeredTileBuilder: (int index) => const StaggeredTile.count(
                      1,
                      2,
                    ),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 2,
                itemCount: productController.productList.length,
                itemBuilder: (context, index) {
                  return _buildPageItem(index);
                }));
      }
    });
  }

  Widget _buildPageItem(int index) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/fifth');
      },
      child: Card(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: Dimensions.screenWidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        productController.productList[index].image),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            ExpandableText(
              text: productController.productList[index].title,
              size: 18,
            ),
            const SizedBox(
              height: 10,
            ),
            BigText(
              text: '\$' +
                  (productController.productList[index].price).toString(),
              size: 20,
              color: AppColors.mainappsecondaryColor,
            )
          ],
        ),
      ),
    );
  }
}
