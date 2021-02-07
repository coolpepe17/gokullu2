import 'package:flutter/material.dart';
// import 'package:gokullu/screen/home/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gokullu/screen/mob_reg/m_reg_screen.dart';
// import 'package:gokullu/screen/mob_reg/m_reg_screen.dart';
// import 'package:gokullu/screen/register/register_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = Duration(seconds: 3);
    // delayed 3 seconds to next page
    Future.delayed(d, () {
      // to next page and close this page
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return MobRegScreen();
          },
        ),
        (route) => false,
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //decoration: BoxDecoration(
        //image: DecorationImage(
        //image: AssetImage('assets/images/trek.g'),
        //  ),
        //),
        child: Center(
          child: SvgPicture.asset('assets/images/logo2_s.svg'),
        ),
      ),
    );
  }
}
