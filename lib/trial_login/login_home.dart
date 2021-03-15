import 'package:flutter/material.dart';
import 'package:gokullu/trial_login/Pages/custom_widget.dart';
import 'package:gokullu/trial_login/register.dart';

import '../constant.dart';
import 'login_page.dart';

// -------------------------------------------------

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            child: LogoImage(
          imgHeight: MediaQuery.of(context).size.height * 0.7,
        )),
        Positioned(
            bottom: 5,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  children: <Widget>[
                    Text(
                      'GO Kullu!',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    SizedBox(height: 20),
                    CustomButton(
                        btnText: 'Proceed to Go Kullu',
                        onBtnPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SignUp();
                          }));
                        })
                  ],
                )))
      ],
    ));
  }
}

// -------------------------------------------------

// class LogHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Image Loader',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         fontFamily: 'Poppins',
//         primaryColor: Colors.white,
//         floatingActionButtonTheme: FloatingActionButtonThemeData(
//           elevation: 0,
//           foregroundColor: Colors.white,
//         ),
//         accentColor: Colors.redAccent,
//         textTheme: TextTheme(
//           headline1: TextStyle(fontSize: 22.0, color: Colors.redAccent),
//           headline2: TextStyle(
//             fontSize: 24.0,
//             fontWeight: FontWeight.w700,
//             color: Colors.redAccent,
//           ),
//           bodyText1: TextStyle(
//             fontSize: 14.0,
//             fontWeight: FontWeight.w400,
//             color: Colors.blueAccent,
//           ),
//         ),
//       ),
//       home: LoginTrial(),
//     );
//   }
// }
