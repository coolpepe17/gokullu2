import 'package:flutter/material.dart';
import 'package:gokullu/constant.dart';

class MobileReg extends StatelessWidget {
  const MobileReg({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Center(
        child: Text(
          'Enter Details!',
          style: TextStyle(
            color: mPrimaryTextColor,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
