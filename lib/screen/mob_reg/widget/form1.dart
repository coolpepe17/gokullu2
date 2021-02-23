// import 'package:flutter/material.dart';
// import 'dart:ui';
// // import 'package:flutter/material.dart';
// import 'package:gokullu/constant.dart';
// // import 'package:gokullu/screen/about/about_app.dart';
// import 'package:gokullu/services/auth.dart';
// import 'package:gokullu/widget/round_button.dart';
// // import 'package:gokullu/screen/about/about_app.dart';
// // import 'package:gokullu/screen/mob_reg/widget/m_reg_form.dart';
// // import 'package:gokullu/screen/mob_reg/widget/m_reg_image.dart';
// // import 'package:gokullu/widget/round_button.dart';

// import '../../../constant.dart';
// import 'm_reg_image.dart';

// // class MyApp extends StatelessWidget {
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         // This is the theme of your application.
// //         //
// //         // Try running your application with "flutter run". You'll see the
// //         // application has a blue toolbar. Then, without quitting the app, try
// //         // changing the primarySwatch below to Colors.green and then invoke
// //         // "hot reload" (press "r" in the console where you ran "flutter run",
// //         // or simply save your changes to "hot reload" in a Flutter IDE).
// //         // Notice that the counter didn't reset back to zero; the application
// //         // is not restarted.
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: MyForm(),
// //     );
// //   }
// // }

// class SignUp extends StatefulWidget {
//   @override
//   _SignUpState createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   // final AuthService _auth = AuthService();

//   final _formKey = GlobalKey<FormState>();

//   String email = '';

//   String password = '';

//   String confirmPassword = '';

//   String error = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBar(context),
//       body: SingleChildScrollView(
//         // body: Container(
//         padding: EdgeInsets.all(16),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: <Widget>[
//               MobRegImg(),
//               SizedBox(height: 30),
//               TextFormField(
//                   keyboardType: TextInputType.emailAddress,
//                   // style: TextStyle(color: mPrimaryColor),
//                   decoration: InputDecoration(
//                     labelStyle: TextStyle(fontSize: 14, color: Colors.purple),
//                     labelText: 'Enter Your email id',
//                     icon: Icon(
//                       Icons.email,
//                       color: Colors.purple,
//                     ),
//                     fillColor: Colors.white,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(15.0),
//                       borderSide: BorderSide(
//                         color: mPrimaryColor,
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15.0),
//                         borderSide: BorderSide(
//                           color: mPrimaryColor,
//                           width: 2,
//                         )),
//                     enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15.0),
//                         borderSide: BorderSide(
//                           color: Colors.grey,
//                           width: 1,
//                         )),
//                     //fillColor: Colors.green
//                   ),
//                   validator: (val) => val.isEmpty ? 'Enter an email' : null,
//                   onChanged: (val) {
//                     setState(() => email = val);
//                   }),
//               SizedBox(height: 10),
//               TextFormField(
//                   keyboardType: TextInputType.text,
//                   // style: TextStyle(color: mPrimaryColor),
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     labelStyle: TextStyle(fontSize: 14, color: Colors.purple),
//                     labelText: 'Set a Password',
//                     icon: Icon(
//                       Icons.lock,
//                       color: Colors.purple,
//                     ),
//                     fillColor: Colors.white,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(15.0),
//                       borderSide: BorderSide(
//                         color: mPrimaryColor,
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15.0),
//                         borderSide: BorderSide(
//                           color: mPrimaryColor,
//                           width: 2,
//                         )),
//                     enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15.0),
//                         borderSide: BorderSide(
//                           color: Colors.grey,
//                           width: 1,
//                         )),
//                     //fillColor: Colors.green
//                   ),
//                   validator: (val) =>
//                       val.length < 8 ? 'Minimum 8 character password' : null,
//                   onChanged: (val) {
//                     setState(() => password = val);
//                   }),
//               SizedBox(height: 20.0),
//               Text(
//                 error,
//                 style: TextStyle(color: mPrimaryColor, fontSize: 14.0),
//               ),

//               // SizedBox(height: 10),
//               // TextFormField(
//               //     keyboardType: TextInputType.phone,
//               //     // style: TextStyle(color: mPrimaryColor),
//               //     obscureText: true,
//               //     decoration: InputDecoration(
//               //       labelStyle: TextStyle(fontSize: 14, color: Colors.purple),
//               //       labelText: 'Confirm Passwword',
//               //       icon: Icon(
//               //         Icons.lock,
//               //         color: Colors.purple,
//               //       ),
//               //       fillColor: Colors.white,
//               //       border: OutlineInputBorder(
//               //         borderRadius: BorderRadius.circular(15.0),
//               //         borderSide: BorderSide(
//               //           color: mPrimaryColor,
//               //         ),
//               //       ),
//               //       focusedBorder: OutlineInputBorder(
//               //           borderRadius: BorderRadius.circular(15.0),
//               //           borderSide: BorderSide(
//               //             color: mPrimaryColor,
//               //             width: 2,
//               //           )),
//               //       enabledBorder: OutlineInputBorder(
//               //           borderRadius: BorderRadius.circular(15.0),
//               //           borderSide: BorderSide(
//               //             color: Colors.grey,
//               //             width: 1,
//               //           )),
//               //       //fillColor: Colors.green
//               //     ),
//               //     validator: (val) =>
//               //         val.length < 8 ? 'Minimum 8 character password' : null,
//               //     onChanged: (val) {
//               //       setState(() => confirmPassword = val);
//               //     }),
//               // Button(),
//               // SizedBox(height: 20),
//               // Container(
//               //   padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
//               //   child: Row(
//               //     children: <Widget>[
//               //       Expanded(
//               //           child: Button(
//               //         title: 'Submit',
//               //         press: () async {
//               //           print(email);
//               //           print(password);
//               //           print(confirmPassword);
//               //           if (_formKey.currentState.validate()) {
//               //             ScaffoldMessenger.of(context).showSnackBar(
//               //                 SnackBar(content: Text('Data Submitted')));
//               //             // print("Your data is submitted");
//               //           }
//               //         },
//               //       )),
//               //     ],
//               //   ),
//               // ),
//               SizedBox(height: 10),
//               Container(
//                 padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
//                 child: Row(
//                   children: <Widget>[
//                     Expanded(
//                         child: Button(
//                             title: 'Sing In & Proceed',
//                             press: () async {
//                               if (_formKey.currentState.validate()) {
//                                 dynamic result =
//                                     await _auth.registerWithEmailAndPassword(
//                                         email, password);
//                                 if (result == null) {
//                                   setState(() =>
//                                       error = 'Please Enter a Valid email');
//                                 }
//                               }
//                             })),
//                     // SizedBox(height: 20.0),
//                     // Text(
//                     //   error,
//                     //   style: TextStyle(color: mPrimaryColor, fontSize: 14.0),
//                     // )
//                   ],
//                 ),
//               ),
//               // SizedBox(height: 20.0),
//               // Text(
//               //   error,
//               //   style: TextStyle(color: Colors.red, fontSize: 14.0),
//               // )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   AppBar buildAppBar(BuildContext context) {
//     return AppBar(
//       backgroundColor: mBackgroundColor,
//       elevation: 5,
//       centerTitle: true,
//       title: Text(
//         'Sign Up',
//         style: TextStyle(
//           color: mPrimaryTextColor,
//         ),
//       ),
//     );
//   }
// }
