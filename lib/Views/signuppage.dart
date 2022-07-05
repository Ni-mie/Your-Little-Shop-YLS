// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:your_little_shop/Utilities/app_colors.dart';

import 'package:your_little_shop/Utilities/big_text.dart';
import 'package:your_little_shop/Utilities/dimensions.dart';
import 'package:your_little_shop/Utilities/small_text.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textheadingwhiteColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: <Widget>[
            Container(
              height: 700,
            ),
            Positioned(
                top: 40,
                left: 10,
                right: 350,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context, '/second');
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.mainappsecondaryColor,
                  ),
                )),
            Positioned(
              //For Text
              //
              top: 80,
              left: 20,
              right: 20,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    BigText(
                        color: AppColors.mainappsecondaryColor,
                        text: 'Create your',
                        size: 40),
                    const SizedBox(
                      height: 5,
                    ),
                    BigText(
                      color: AppColors.mainappsecondaryColor,
                      text: 'Account',
                      size: 40,
                    )
                  ]),
            ),
            Positioned(
              //Container Content
              left: 0,
              right: 0,
              top: 180,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                decoration: BoxDecoration(
                  color: AppColors.textheadingwhiteColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200]?.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const TextField(
                          decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        border: InputBorder.none,
                        hintText: "Full Name",
                      )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200]?.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const TextField(
                          decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        border: InputBorder.none,
                        hintText: "Email",
                      )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200]?.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: TextField(
                          obscureText: true,
                          obscuringCharacter: '*',
                          autocorrect: false,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            border: InputBorder.none,
                            hintText: "Password",
                            suffixIconColor: AppColors.mainappColor,
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                }),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200]?.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: TextField(
                          obscureText: true,
                          obscuringCharacter: '*',
                          autocorrect: false,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            border: InputBorder.none,
                            hintText: "Confirm Password",
                            suffixIconColor: AppColors.mainappColor,
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                }),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SmallText(
                            color: AppColors.mainappsecondaryColor,
                            text: 'Remember me',
                            size: 16),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/fourth');
                      },
                      child: Container(
                        height: 50,
                        width: Dimensions.screenWidth,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 140),
                        decoration: BoxDecoration(
                          color: AppColors.mainappColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: SmallText(
                          text: 'Sign Up',
                          size: 18,
                          color: AppColors.textheadingwhiteColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SmallText(
                      text: 'or continue with',
                      size: 18,
                      color: AppColors.mainappsecondaryColor,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SignInButton(
                      Buttons.Google,
                      text: 'Continue With Google',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    SignInButton(
                      Buttons.Apple,
                      text: 'Continue With Apple',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
