import 'package:flutter/material.dart';

class AbtImage extends StatelessWidget {
  const AbtImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Center(
          child: Image.asset(
        'assets/images/trek4.jpg',
        // height: 350,
      )),
    );
  }
}
