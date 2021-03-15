import 'package:flutter/material.dart';
import 'package:gokullu/constant.dart';
import 'package:gokullu/screen/splash/splash_screen.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: 'Go Kullu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: mBackgroundColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: Colors.purple,
          accentColor: Colors.purple,
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold),
            headline5: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
            bodyText1: TextStyle(fontSize: 20.0),
            bodyText2: TextStyle(fontSize: 18.0),
          ),
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: Colors.purple,
            selectionColor: Colors.purple,
            selectionHandleColor: Colors.purple,
          )),
      home: SplashScreen(),
    );
  }
}
