import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gokullu/pages/home_page.dart';
// import 'package:gokullu/models/user.dart';
// import 'package:gokullu/pages/login/login_page.dart';
// import 'package:gokullu/screen/about/about_app.dart';
// import 'package:gokullu/screen/authenticate/authenticate.dart';
import 'package:gokullu/screen/mob_reg/widget/form1.dart';
// import 'package:gokullu/screen/mob_reg/m_reg_screen.dart';
// import 'package:gokullu/screen/mob_reg/widget/form.dart';
// import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

final routes = {
  '/signin': (BuildContext context) => new SignIn(),
  '/home': (BuildContext context) => new HomePage(),
  '/': (BuildContext context) => new SignIn(),
};

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
            return SignIn();
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
        child: Center(
          child: SvgPicture.asset('assets/icons/logo2_s.svg'),
        ),
      ),
    );
  }
}
