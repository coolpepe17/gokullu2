import 'package:flutter/material.dart';
import 'package:gokullu/constant.dart';
// import 'package:gokullu/constant.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 4),
        primary: mPrimaryTextColor,
        // shape: const RoundedRectangleBorder(
        //     borderRadius: BorderRadius.all(Radius.circular(36))),
        elevation: 8,
        shadowColor: Colors.black,
        onSurface: Colors.red,
      ),
      onPressed: press,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
