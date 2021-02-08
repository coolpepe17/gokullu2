import 'package:flutter/material.dart';
import 'package:gokullu/constant.dart';
import 'package:gokullu/screen/preferences/widget/attribute.dart';
import 'package:gokullu/screen/preferences/widget/header.dart';
import 'package:gokullu/screen/preferences/widget/name_and_number.dart';
import 'package:gokullu/screen/preferences/widget/total_price.dart';
import 'package:gokullu/widget/round_button.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class PreferencesScreen extends StatelessWidget {
  final int index;

  PreferencesScreen(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: <Widget>[
          Header(index: index),
          NameAndNumber(index: index),
          Divider(
            color: mPrimaryTextColor.withOpacity(0.5),
          ),
          Attribute(
            title: 'Difficulty :',
            iconNames: [
              'size1',
              'size2',
              'size3',
            ],
            alignment: Alignment.bottomLeft,
            check: 1,
          ),
          Divider(
            color: mPrimaryTextColor.withOpacity(0.5),
          ),
          Attribute(
            title: 'Altitude :',
            iconNames: ['sugar1', 'sugar2', 'sugar3', 'sugar4'],
            check: 2,
          ),
          Divider(
            color: mPrimaryTextColor.withOpacity(0.5),
          ),
          Attribute(
            title: 'Duration :',
            iconNames: ['additions1', 'additions2'],
            check: 2,
          ),
          Divider(
            color: mPrimaryTextColor.withOpacity(0.5),
          ),
          // TotalPrice(),
          SizedBox(height: 50),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            child: RoundButton(
              title: 'Proceed to Start Trek',
              press: () {},
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 5,
      centerTitle: true,
      title: Text(
        'Trek Details',
        style: TextStyle(
          color: mPrimaryTextColor,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: mPrimaryTextColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
