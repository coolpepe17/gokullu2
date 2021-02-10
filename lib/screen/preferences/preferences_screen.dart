import 'package:flutter/material.dart';
import 'package:gokullu/constant.dart';
import 'package:gokullu/screen/preferences/widget/header.dart';
import 'package:gokullu/screen/treks/malana.dart';
import 'package:gokullu/widget/round_button.dart';

class PreferencesScreen extends StatelessWidget {
  final int index;

  PreferencesScreen(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(index: index),
            //NameAndNumber(index: index),
            Malana(index: index),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
              child: RoundButton(
                title: 'Proceed to Start Trek',
                press: () {},
              ),
            )
          ],
        ),
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
