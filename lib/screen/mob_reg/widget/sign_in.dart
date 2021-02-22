import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:gokullu/constant.dart';
import 'package:gokullu/services/auth.dart';
import 'package:gokullu/widget/round_button.dart';
import '../../../constant.dart';
import 'm_reg_image.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  final _key = GlobalKey<FormState>();

  String email = '';

  String password = '';

  String confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        // body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _key,
          child: Column(
            children: <Widget>[
              MobRegImg(),
              // SizedBox(height: 30),
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  // style: TextStyle(color: mPrimaryColor),
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 14, color: Colors.purple),
                    labelText: 'Enter Your email id',
                    icon: Icon(
                      Icons.email,
                      color: Colors.purple,
                    ),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: mPrimaryColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: mPrimaryColor,
                          width: 2,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        )),
                    //fillColor: Colors.green
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'email can not be empty';
                    } else if (value.length < 10) {
                      return 'Enter a Valid email Id';
                      // } else if (value.length > 10) {
                      //   return 'Enter a Valid Mobile Number';
                    } else
                      return null;
                  },
                  onChanged: (val) {
                    setState(() => email = val);
                  }),
              SizedBox(height: 10),
              TextFormField(
                  keyboardType: TextInputType.text,
                  // style: TextStyle(color: mPrimaryColor),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 14, color: Colors.purple),
                    labelText: 'Set a Password',
                    icon: Icon(
                      Icons.lock,
                      color: Colors.purple,
                    ),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: mPrimaryColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: mPrimaryColor,
                          width: 2,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        )),
                    //fillColor: Colors.green
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'This can not be empty';
                    } else if (value.length < 6) {
                      return 'Min 6 Characters required';
                      // } else if (value.length > 4) {
                      //   return "Enter a Valid 4 Digit Pin";
                    } else
                      return null;
                  },
                  onChanged: (val) {
                    setState(() => password = val);
                  }),

              SizedBox(height: 10),
              // TextFormField(
              //     keyboardType: TextInputType.phone,
              //     // style: TextStyle(color: mPrimaryColor),
              //     obscureText: true,
              //     decoration: InputDecoration(
              //       labelStyle: TextStyle(fontSize: 14, color: Colors.purple),
              //       labelText: 'Confirm Passwword',
              //       icon: Icon(
              //         Icons.lock,
              //         color: Colors.purple,
              //       ),
              //       fillColor: Colors.white,
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(15.0),
              //         borderSide: BorderSide(
              //           color: mPrimaryColor,
              //         ),
              //       ),
              //       focusedBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(15.0),
              //           borderSide: BorderSide(
              //             color: mPrimaryColor,
              //             width: 2,
              //           )),
              //       enabledBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(15.0),
              //           borderSide: BorderSide(
              //             color: Colors.grey,
              //             width: 1,
              //           )),
              //       //fillColor: Colors.green
              //     ),
              //     validator: (value) {
              //       if (value.isEmpty) {
              //         return 'This can not be empty';
              //       } else if (value.length < 4) {
              //         return 'Min 6 Characters required';
              //         // } else if (value.length > 4) {
              //         //   return 'Enter a Valid 4 Digit Pin';
              //       } else
              //         return null;
              //     },
              //     onChanged: (val) {
              //       setState(() => confirmPassword = val);
              //     }
              //     // decoration: InputDecoration(
              //     //     hintText: 'Confirm the 4 digit PIN',
              //     //     // labelText: _weightMessage,
              //     //     icon: Icon(Icons.fiber_pin_rounded),
              //     //     fillColor: Colors.white),
              //     ),
              // Button(),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Button(
                      title: 'Submit',
                      press: () async {
                        print(email);
                        print(password);
                        print(confirmPassword);
                        if (_key.currentState.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Data Submitted')));
                          // print("Your data is submitted");
                        }
                      },
                    )),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Button(
                            title: 'Sing In & Proceed',
                            press: () async {
                              dynamic result = await _auth.signInAnon();
                              if (result == null) {
                                print('Error Signing In');
                              } else {
                                print('Signed In');
                                print(result.uid);
                              }
                            })),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: mBackgroundColor,
      elevation: 5,
      centerTitle: true,
      title: Text(
        'Sign In',
        style: TextStyle(
          color: mPrimaryTextColor,
        ),
      ),
    );
  }
}
