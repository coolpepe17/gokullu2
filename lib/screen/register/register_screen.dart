import 'dart:ui';

//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gokullu/constant.dart';
//import 'package:flutter_coffee/screen/login/widget/login_button.dart';
// import 'package:flutter_coffee/screen/login/widget/login_form.dart';
// import 'package:flutter_coffee/screen/login/widget/welcome_back.dart';

import 'widget/register_form.dart';
import 'widget/welcome_to.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            WelcomeTo(),
            RegForm(),
            /*Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot password?',
                style: TextStyle(color: mPrimaryColor),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            LoginButton(),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 16,
              ),
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(style: TextStyle(color: Colors.grey), children: [
                  TextSpan(text: 'Don\'t have an account? '),
                  TextSpan(
                    text: 'Register',
                    style: TextStyle(
                      color: mPrimaryColor,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pop(context);
                      },
                  ),
                ]),
              ),
            )*/
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: mBackgroundColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Registration',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: mPrimaryTextColor,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: mPrimaryTextColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
