import 'package:flutter/material.dart';
import 'package:gokullu/SignUp/emergency.dart';
import 'package:gokullu/constant.dart';
import 'package:gokullu/screen/preferences/widget/header.dart';
import 'package:gokullu/screen/register/register_screen.dart';
import 'package:gokullu/screen/trek_menu/widget/trek_name.dart';
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
            SizedBox(height: 0),
            Header(index: index),
            //NameAndNumber(index: index),
            TrekDetails(index: index),
            // SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
              child: Row(children: <Widget>[
                Expanded(
                  child: Button(
                    title: 'Start Trek',
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return EmergencyDetails();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ]),
              // padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
              // child: RoundButton(
              //   title: 'Proceed to Start Trek',
              //   press: () {},
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
