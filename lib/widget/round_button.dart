import 'package:flutter/material.dart';
import 'package:gokullu/constant.dart';
// import 'package:gokullu/constant.dart';

class Button extends StatelessWidget {
  const Button({
    Key key,
    this.title,
    this.press,
    Text children,
    Text child,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
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
