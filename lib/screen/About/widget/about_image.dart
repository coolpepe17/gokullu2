import 'package:flutter/material.dart';

class AbtImage extends StatelessWidget {
  const AbtImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: Image.asset(
              'assets/images/Chandrakhani Pass Trek.jpg',
              height: 250,
              // width: 400,
            ),
          ),
        ));
  }
}
