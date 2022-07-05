// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:your_little_shop/Utilities/app_colors.dart';
import 'package:your_little_shop/Utilities/big_text.dart';
import 'package:your_little_shop/Utilities/dimensions.dart';
import 'package:your_little_shop/Utilities/small_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Dimensions.screenHeight,
        padding: EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350,
              width: Dimensions.screenWidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/illustration.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BigText(
              color: AppColors.mainappColor,
              text: 'Welcome',
              size: 45,
            ),
            BigText(
              color: AppColors.mainappColor,
              text: 'to YLS!',
              size: 45,
            ),
            SizedBox(
              height: 8,
            ),
            SmallText(
              color: AppColors.smalltextColor,
              text: 'We\'re very lucky to find you!',
              size: 15,
            ),
            SmallText(
              color: AppColors.smalltextColor,
              text: 'With YLS you can shop affordability at your convenience.',
              size: 15,
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/third');
              },
              child: Container(
                height: 50,
                width: 400,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 135),
                decoration: BoxDecoration(
                  color: AppColors.mainappColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: BigText(
                  text: 'Join Now',
                  size: 20,
                  color: AppColors.textheadingwhiteColor,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmallText(
                    text: 'Already a member?',
                    size: 15,
                    color: AppColors.smalltextColor,
                  ),
                  SmallText(
                    text: 'Login',
                    size: 15,
                    color: AppColors.mainappColor,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
