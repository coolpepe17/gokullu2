import 'package:flutter/material.dart';
import 'package:gokullu/constant.dart';

class Malana extends StatelessWidget {
  const Malana({
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
              SizedBox(
                height: 10,
              ),
              Text(
                trekNames[index],
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: mTitleTextColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Divider(
            color: mPrimaryTextColor.withOpacity(1.0),
            thickness: 1.5,
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                route[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: mTitleTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Divider(
            color: mPrimaryTextColor.withOpacity(1.0),
            thickness: 1.5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                altitude[index],
                style: TextStyle(
                  color: mTitleTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Divider(
            color: mPrimaryTextColor.withOpacity(1.0),
            thickness: 1.5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                trekLength[index],
                style: TextStyle(
                  color: mTitleTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Divider(
            color: mPrimaryTextColor.withOpacity(1.0),
            thickness: 1.5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                duration[index],
                style: TextStyle(
                  color: mTitleTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Divider(
            color: mPrimaryTextColor.withOpacity(1.0),
            thickness: 1.5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                difficulty[index],
                style: TextStyle(
                  color: mTitleTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Divider(
            color: mPrimaryTextColor.withOpacity(1.0),
            thickness: 1.5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                bestSeason[index],
                style: TextStyle(
                  color: mTitleTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Divider(
            color: mPrimaryTextColor.withOpacity(1.0),
            thickness: 1.5,
          ),
        ],
      ),
    );
  }
}
