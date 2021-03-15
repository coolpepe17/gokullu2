import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gokullu/screen/About/about_app.dart';
import 'package:gokullu/trial_login/api/api.dart';
import 'package:gokullu/trial_login/register.dart';

import '../constant.dart';
import 'Pages/custom_widget.dart';

// ----------------------------------------------------------------

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String message = '';
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0.0),
      body: Column(children: <Widget>[
        SingleChildScrollView(
          child: LogoImage(
            imgHeight: MediaQuery.of(context).size.height * 0.15,
          ),
        ),
        Expanded(
            child: ListView(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle:
                                TextStyle(fontSize: 14, color: Colors.purple)),
                        controller: emailController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Email cannot be empty';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle:
                                TextStyle(fontSize: 14, color: Colors.purple)),
                        controller: passwordController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Password cannot be empty';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('New User?'),
                          FlatButton(
                            child: Text(
                              'SignUp',
                              style: TextStyle(
                                  fontSize: 18, color: mPrimaryTextColor),
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SignUp();
                              }));
                            },
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      CustomButton(
                        onBtnPressed: () async {
                          if (_formKey.currentState.validate()) {
                            var email = emailController.text;
                            var password = passwordController.text;
                            setState(() {
                              message = 'Please wait...';
                            });
                            var rsp = await loginUser(email, password);
                            print(rsp);
                            if (rsp.containsKey('status')) {
                              setState(() {
                                message = rsp['status_text'];
                              });
                              if (rsp['status'] == 1) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return AboutApp();
                                }));
                              }
                              ;
                            }
                          }
                        },
                        btnText: 'Login',
                      ),
                      SizedBox(height: 10),
                      Text(message),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      )
                    ],
                  ),
                ))
          ],
        ))
      ]),
    );
  }
}

//Pankaj
//   fetchData() async {
//     try {
//       String url = 'http://164.100.207.5/gokullu/Service1.svc/login?';
//       Map<String, String> headers = {'Content-Type': 'application/json'};
//       var bdata = jsonEncode({
//         "trekkerEmail": "${_emailTextController.text}",
//         "trekkerPassword": "${_passwordTextController.text}"
//         // "trekkerEmail": "9418017999",
//         // "trekkerPassword": "raj@12345"
//       });

//       Response resp = await http.post(url, headers: headers, body: bdata);
//       if (resp.statusCode == 200) {
//         var decoded = jsonDecode(resp.body);
//         print(decoded);
//       }
//     } catch (e) {}
//   }
// }

// ----------------------------------------------------------------

// class LoginTrial extends StatefulWidget {
//   @override
//   _LoginTrialState createState() => _LoginTrialState();
// }

// class _LoginTrialState extends State<LoginTrial> {
//   bool hidePassword = true;
//   bool isApiCallProcess = false;
//   GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
//   LoginRequestModel loginRequestModel;
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//   @override
//   void initState() {
//     super.initState();
//     loginRequestModel = new LoginRequestModel();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ProgressHUD(
//       child: _uiSetup(context),
//       inAsyncCall: isApiCallProcess,
//       opacity: 0.3,
//     );
//   }

//   Widget _uiSetup(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: Theme.of(context).accentColor,
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Stack(
//               children: <Widget>[
//                 Container(
//                   width: double.infinity,
//                   padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
//                   margin: EdgeInsets.symmetric(vertical: 85, horizontal: 20),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Theme.of(context).primaryColor,
//                     boxShadow: [
//                       BoxShadow(
//                           color: Theme.of(context).hintColor.withOpacity(0.2),
//                           offset: Offset(0, 10),
//                           blurRadius: 20)
//                     ],
//                   ),
//                   child: Form(
//                     key: globalFormKey,
//                     child: Column(
//                       children: <Widget>[
//                         SizedBox(height: 25),
//                         Text(
//                           "Login",
//                           style: Theme.of(context).textTheme.headline2,
//                         ),
//                         SizedBox(height: 20),
//                         new TextFormField(
//                           keyboardType: TextInputType.emailAddress,
//                           onSaved: (input) => loginRequestModel.email = input,
//                           validator: (input) => !input.contains('@')
//                               ? "Email Id should be valid"
//                               : null,
//                           decoration: new InputDecoration(
//                             hintText: "Email Address",
//                             enabledBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(
//                                     color: Theme.of(context)
//                                         .accentColor
//                                         .withOpacity(0.2))),
//                             focusedBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(
//                                     color: Theme.of(context).accentColor)),
//                             prefixIcon: Icon(
//                               Icons.email,
//                               color: Theme.of(context).accentColor,
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         new TextFormField(
//                           style:
//                               TextStyle(color: Theme.of(context).accentColor),
//                           keyboardType: TextInputType.text,
//                           onSaved: (input) =>
//                               loginRequestModel.password = input,
//                           validator: (input) => input.length < 3
//                               ? "Password should be more than 3 characters"
//                               : null,
//                           obscureText: hidePassword,
//                           decoration: new InputDecoration(
//                             hintText: "Password",
//                             enabledBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(
//                                     color: Theme.of(context)
//                                         .accentColor
//                                         .withOpacity(0.2))),
//                             focusedBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(
//                                     color: Theme.of(context).accentColor)),
//                             prefixIcon: Icon(
//                               Icons.lock,
//                               color: Theme.of(context).accentColor,
//                             ),
//                             suffixIcon: IconButton(
//                               onPressed: () {
//                                 setState(() {
//                                   hidePassword = !hidePassword;
//                                 });
//                               },
//                               color: Theme.of(context)
//                                   .accentColor
//                                   .withOpacity(0.4),
//                               icon: Icon(hidePassword
//                                   ? Icons.visibility_off
//                                   : Icons.visibility),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 30),
//                         FlatButton(
//                           padding: EdgeInsets.symmetric(
//                               vertical: 12, horizontal: 80),
//                           onPressed: () {
//                             if (validateAndSave()) {
//                               print(loginRequestModel.toJson());

//                               setState(() {
//                                 isApiCallProcess = true;
//                               });

//                               APIService apiService = new APIService();
//                               apiService.login(loginRequestModel).then((value) {
//                                 if (value != null) {
//                                   setState(() {
//                                     isApiCallProcess = false;
//                                   });

//                                   if (value.token.isNotEmpty) {
//                                     final snackBar = SnackBar(
//                                         content: Text("Login Successful"));
//                                     scaffoldKey.currentState
//                                         .showSnackBar(snackBar);
//                                   } else {
//                                     final snackBar =
//                                         SnackBar(content: Text(value.error));
//                                     scaffoldKey.currentState
//                                         .showSnackBar(snackBar);
//                                   }
//                                 }
//                               });
//                             }
//                           },
//                           child: Text(
//                             "Login",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                           color: Theme.of(context).accentColor,
//                           shape: StadiumBorder(),
//                         ),
//                         SizedBox(height: 15),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   bool validateAndSave() {
//     final form = globalFormKey.currentState;
//     if (form.validate()) {
//       form.save();
//       return true;
//     }
//     return false;
//   }
// }
