import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gokullu/constant.dart';
import 'package:gokullu/screen/mob_reg/widget/m_reg_submit.dart';
// import 'package:gokullu/screen/login/widget/login_form.dart';
import 'package:gokullu/screen/mob_reg/widget/m_reg_form.dart';
import 'package:gokullu/screen/mob_reg/widget/m_reg_image.dart';
// import 'package:gokullu/screen/mob_reg/widget/m_reg_button.dart';
// import 'package:gokullu/screen/mob_reg/widget/m_reg_form.dart';
// import 'package:gokullu/screen/mob_reg/widget/m_reg_image.dart';

class MobRegScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MobRegImg(),
            MobRegForm(),
            SizedBox(
              height: 30,
            ),
            SubmitRegButton(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: mBackgroundColor,
      elevation: 5,
      centerTitle: true,
      title: Text(
        'Register your Mobile',
        style: TextStyle(
          color: mPrimaryTextColor,
        ),
      ),
    );
  }
}
