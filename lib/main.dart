// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:your_little_shop/Views/detailspage.dart';
import 'package:your_little_shop/Views/homeview.dart';
import 'package:your_little_shop/Views/loginpage.dart';
import 'package:your_little_shop/Views/signuppage.dart';
import 'package:your_little_shop/Views/welcomepage.dart';
import 'package:your_little_shop/bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      initialBinding: ProductBinding(),
      routes: {
        //Home screen route
        '/': (context) => WelcomePage(),
        //Details screen route
        '/second': (context) => Login(),
        '/third': (context) => SignUpPage(),
        '/fourth': (context) => HomePage(),
        '/fifth': (context) => DetailsPage(),
      },
    );
  }
}
