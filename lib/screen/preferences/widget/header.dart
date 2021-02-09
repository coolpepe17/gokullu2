import 'package:flutter/material.dart';
// import 'package:gokullu/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //       image: AssetImage('assets/images/trek.jpg'), fit: BoxFit.cover),
      // ),
      child: UnconstrainedBox(
        child: SvgPicture.asset(
          'assets/icons/${trekNames[index]}.svg',
          height: 100,
        ),
      ),
    );
  }
}
