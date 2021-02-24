import 'package:flutter/material.dart';
// import 'package:fluttersqflite/pages/home_page.dart';
// import 'package:fluttersqflite/pages/login/login_page.dart';
import 'package:gokullu/screen/about/about_app.dart';
import 'package:gokullu/screen/mob_reg/widget/form1.dart';

void main() => runApp(new MyApp());

final routes = {
  '/login': (BuildContext context) => new SignIn(),
  '/home': (BuildContext context) => new AboutApp(),
  '/': (BuildContext context) => new SignIn(),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sqflite App',
      theme: new ThemeData(primarySwatch: Colors.teal),
      routes: routes,
    );
  }
}

// // import 'package:flutter/material.dart';
// // import 'package:gokullu/pages/home_page.dart';
// // import 'package:gokullu/pages/login/login_page.dart';
// // // import 'package:fluttersqflite/pages/home_page.dart';
// // // import 'package:fluttersqflite/pages/login/login_page.dart';

// // void main() => runApp(new MyApp());

// // final routes = {
// //   '/login': (BuildContext context) => new LoginPage(),
// //   '/home': (BuildContext context) => new HomePage(),
// //   '/': (BuildContext context) => new LoginPage(),
// // };

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return new MaterialApp(
// //       title: 'Sqflite App',
// //       theme: new ThemeData(primarySwatch: Colors.teal),
// //       routes: routes,
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:gokullu/constant.dart';
// import 'package:gokullu/pages/home_page.dart';
// import 'package:gokullu/screen/about/about_app.dart';
// import 'package:gokullu/screen/splash/splash_screen.dart';
// import 'package:gokullu/screen/mob_reg/widget/form1.dart';
// // import 'package:gokullu/services/auth.dart';
// // import 'package:provider/provider.dart';

// // import 'models/user.dart';

// void main() {
//   runApp(MyApp());
// }

// final routes = {
//   '/signin': (BuildContext context) => new SignIn(),
//   '/home': (BuildContext context) => new HomePage(),
//   '/': (BuildContext context) => new SignIn(),
// };

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // return StreamProvider<User>.value(
//       // value: AuthService().user,
//       // child: MaterialApp(
//       title: 'Go Kullu',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         scaffoldBackgroundColor: mBackgroundColor,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: SignIn(),
//     );
//   }
// }
