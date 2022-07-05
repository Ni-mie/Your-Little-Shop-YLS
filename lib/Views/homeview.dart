// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:your_little_shop/Utilities/app_colors.dart';
import 'package:your_little_shop/Utilities/big_text.dart';
import 'package:your_little_shop/Utilities/dimensions.dart';

import 'package:your_little_shop/Utilities/small_text.dart';
import 'package:your_little_shop/Views/categories.dart';
import 'package:your_little_shop/Views/homepagebody.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        iconSize: 24,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Events'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart), label: 'Events'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled), label: 'Events'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppColors.mainappColor,
        unselectedItemColor: AppColors.mainappsecondaryColor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 4350,
          width: Dimensions.screenWidth,
          padding: EdgeInsets.only(top: 40, right: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(
                  color: AppColors.mainappColor,
                  text: 'Hi, Ebunoluwa!',
                  size: 30),
              SmallText(
                  text: 'Shop Products from YLS',
                  color: AppColors.smalltextColor,
                  size: 18),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400]?.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                    decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Find Products",
                )),
              ),
              SizedBox(height: 30),
              Categories(),
              SizedBox(
                height: 5,
              ),
              HomePageBody(),
            ],
          ),
        ),
      ),
    );
  }
}
