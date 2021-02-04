import 'package:flutter/material.dart';
import 'package:gokullu/constant.dart';

class WelcomeTo extends StatelessWidget {
  const WelcomeTo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Center(
        child: Text(
          'Kindly Fill the details!',
          style: TextStyle(
            color: mPrimaryTextColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
