import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:your_little_shop/Utilities/app_colors.dart';

import 'package:your_little_shop/Utilities/big_text.dart';
import 'package:your_little_shop/Utilities/dimensions.dart';
import 'package:your_little_shop/Utilities/small_text.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              height: Dimensions.screenHeight,
            ),
            Positioned(
                //For Text
                //
                top: 40,
                left: 100,
                right: 40,
                child: BigText(
                    color: AppColors.mainappColor, text: 'Y L S', size: 100)),
            Positioned(
              //Container Content
              left: 0,
              right: 0,
              top: 200,
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
                          decoration: InputDecoration(
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
                        // controller: ,
                        obscureText: _isObscure,
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
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        SmallText(
                          text: 'Forgot Password? /',
                          size: 14,
                          color: AppColors.mainappsecondaryColor,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        BigText(
                            color: AppColors.mainappColor,
                            text: 'Reset',
                            size: 16)
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
                          text: 'Sign In',
                          size: 18,
                          color: AppColors.textheadingwhiteColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SmallText(
                      text: 'or',
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
                    const SizedBox(
                      height: 8,
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
