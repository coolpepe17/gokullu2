import 'package:flutter/material.dart';
import 'package:gokullu/constant.dart';

import 'trek_info.dart';

class TrekDetails extends StatelessWidget {
  const TrekDetails({
    Key key,
    @required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // SizedBox(
              //   height: 10,
              // ),
              Text(
                trekNames[index],
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: mPrimaryTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Divider(
            color: Colors.grey.withOpacity(1.0),
            thickness: 2.0,
          ),
          // SizedBox(height: 5),
          TrekInfo(index: index),
        ],
      ),
    );
  }
}
