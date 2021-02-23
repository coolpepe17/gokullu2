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

  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        // body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
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
                  validator: (val) => val.isEmpty ? 'Enter an email' : null,
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
                  validator: (val) =>
                      val.length < 8 ? 'Minimum 8 character password' : null,
                  onChanged: (val) {
                    setState(() => password = val);
                  }),
              SizedBox(height: 20.0),
              Text(
                error,
                style: TextStyle(color: mPrimaryColor, fontSize: 14.0),
              ),

              // SizedBox(height: 10),
              // SizedBox(height: 20),
              // Container(
              //   padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              //   child: Row(
              //     children: <Widget>[
              //       Expanded(
              //           child: Button(
              //         title: 'Submit',
              //         press: () async {
              //           print(email);
              //           print(password);
              //           print(confirmPassword);
              //           if (_formKey.currentState.validate()) {
              //             ScaffoldMessenger.of(context).showSnackBar(
              //                 SnackBar(content: Text('Data Submitted')));
              //             // print("Your data is submitted");
              //           }
              //         },
              //       )),
              //     ],
              //   ),
              // ),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Button(
                            title: 'Sing In & Proceed',
                            press: () async {
                              if (_formKey.currentState.validate()) {
                                dynamic result =
                                    await _auth.signInWithEmailAndPassword(
                                        email, password);
                                if (result == null) {
                                  setState(() => error =
                                      'Could not Sign in with those Credentials');
                                }
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
