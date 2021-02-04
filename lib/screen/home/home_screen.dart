import 'package:flutter/material.dart';
import 'package:gokullu/constant.dart';
import 'package:gokullu/screen/home/widget/login_and_register.dart';
import 'package:gokullu/screen/home/widget/slider_dot.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 150,
          ),
          Image.asset('assets/images/trek2.jpg'),
          SliderDot(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Welcome to Kullu!\n "The Valley of GODS" ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: mPrimaryTextColor,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          //RegisterScreen(),
          LoginAndRegister(),
          //LoginWithFacebook()
        ],
      ),
    );
  }
}
