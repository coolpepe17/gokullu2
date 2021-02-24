import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget mainLogo() {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: new RawMaterialButton(
            onPressed: () {},
            child: SvgPicture.asset('assets/icons/logo2_s.svg'),
            shape: new CircleBorder(),
            elevation: 8.0,
            fillColor: Colors.white,
            padding: const EdgeInsets.all(5.0),
          ),
        ),
      ],
    ),
  );
}
