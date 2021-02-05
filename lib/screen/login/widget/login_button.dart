import 'package:flutter/material.dart';
import 'package:gokullu/constant.dart';
import 'package:gokullu/screen/home/home_screen.dart';
import 'package:gokullu/screen/main/main_screen.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(36),
        ),
        color: mPrimaryColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return HomeScreen();
              },
            ),
          );
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          child: Text(
            'Submit',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
