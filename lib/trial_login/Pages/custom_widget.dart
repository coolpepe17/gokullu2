import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  final double imgHeight;
  LogoImage({this.imgHeight});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/images/logo2_s.png'),
      width: MediaQuery.of(context).size.width,
      height: imgHeight,
    );
  }
}
