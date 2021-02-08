import 'package:flutter/material.dart';
// import 'package:gokullu/constant.dart';
import 'package:gokullu/screen/About/about_app.dart';
// import 'package:gokullu/screen/about_app/about_app.dart';
// import 'package:gokullu/screen/login/m_reg_screen.dart';
// import 'package:gokullu/screen/main/about_app.dart';
// import 'package:gokullu/screen/login/login_screen.dart';
// import 'package:gokullu/screen/register/register_screen.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(80, 10, 50, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: StadiumBorder(),
                side: BorderSide(width: 2, color: Colors.red),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AboutApp();
                    },
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          // Expanded(
          //   child: FlatButton(
          //     shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(36),
          //         side: BorderSide(color: mPrimaryColor)),
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) {
          //             return LoginScreen();
          //           },
          //         ),
          //       );
          //     },
          //     // child: Container(
          //     //   padding: const EdgeInsets.symmetric(vertical: 16),
          //     //   alignment: Alignment.center,
          //     //   width: double.infinity,
          //     //   child: Text(
          //     //     'Login',
          //     //     style: TextStyle(
          //     //       color: mPrimaryColor,
          //     //     ),
          //     //   ),
          //     // ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
