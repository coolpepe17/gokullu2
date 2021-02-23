import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:gokullu/constant.dart';
import 'package:gokullu/data/database_helper.dart';
import 'package:gokullu/models/user.dart';
import 'package:gokullu/screen/About/about_app.dart';
// import 'package:gokullu/services/auth.dart';
// import 'package:gokullu/widget/round_button.dart';
import '../../../constant.dart';
import '../../../data_view.dart';
import 'm_reg_image.dart';
// import 'dart.io';

class SignUp extends StatefulWidget {
  User obj;
  SignUp({this.obj});
  @override
  _SignUpState createState() => _SignUpState(obj: this.obj);
}

class _SignUpState extends State<SignUp> {
  // final AuthService _auth = AuthService();

  final _formKey = GlobalKey<FormState>();
  DatabaseHelper helper = DatabaseHelper();

  // TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String imgIntoString = '';

  User obj;

  _SignUpState({this.obj});

  // Future getImage() async {
  //   final pickedFile =
  //       await ImagePicker().getImage(source: ImageSource.gallery);
  //   final File file = File(pickedFile.path);
  //   return file;
  // }

  @override
  void initState() {
    super.initState();
    if (obj != null) {
      // usernameController.text = obj.username;
      emailController.text = obj.email;
      passwordController.text = obj.password;
      // imgIntoString = obj.image;
    }
  }
  // String email = '';

  // String password = '';

  // String confirmPassword = '';

  // String error = '';

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
              SizedBox(height: 30),
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
                controller: emailController,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter an email';
                  } else {
                    return null;
                  }
                },
              ),
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
                controller: passwordController,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter a Password of min 8 characters';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 20.0),
              // Text(
              //   error,
              //   style: TextStyle(color: mPrimaryColor, fontSize: 14.0),
              // ),

              // SizedBox(height: 10),
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
              //     validator: (val) =>
              //         val.length < 8 ? 'Minimum 8 character password' : null,
              //     onChanged: (val) {
              //       setState(() => confirmPassword = val);
              //     }),
              // Button(),
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
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                alignment: Alignment.center,
                child: RaisedButton(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  shape: StadiumBorder(),
                  elevation: 8,
                  color: mPrimaryColor,
                  textColor: Colors.white,
                  child: obj != null ? Text('Update') : Text('Submit'),
                  onPressed: () {
                    if (obj != null) {
                      onUpdate();
                    } else {
                      onSubmit();
                    }
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                alignment: Alignment.center,
                child: RaisedButton(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  shape: StadiumBorder(),
                  elevation: 8,
                  color: mPrimaryColor,
                  textColor: Colors.white,
                  child: Text('Proceed'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => DataView()));
                  },
                ),
              ),
              // Container(
              //   padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              //   child: Row(
              //     children: <Widget>[
              //       Expanded(
              //           child: Button(
              //         child: obj != null ? Text('Update') : Text('Submit'),
              //         press: () {
              //           if (obj != null) {
              //             onUpdate();
              //           } else {
              //             onSubmit();
              //           }
              //         },

              //         // title: 'Sing In & Proceed',
              //         // press: () async {
              //         //       // if (_formKey.currentState.validate()) {
              //         //       //   dynamic result =
              //         //       //       // await _auth.registerWithEmailAndPassword(
              //         //       //           // email, password);
              //         //       //   if (result == null) {
              //         //       //     setState(() =>
              //         //       //         error = 'Please Enter a Valid email');
              //         //       //   }
              //         //       // }
              //         // }
              //       )),
              //       // SizedBox(height: 20.0),
              //       // Text(
              //       //   error,
              //       //   style: TextStyle(color: mPrimaryColor, fontSize: 14.0),
              //       // )
              //     ],
              //   ),
              // ),
              // SizedBox(height: 20.0),
              // Text(
              //   error,
              //   style: TextStyle(color: Colors.red, fontSize: 14.0),
              // )
            ],
          ),
        ),
      ),
    );
  }

  onSubmit() async {
    if (_formKey.currentState.validate()) {
      User obj = User(
        email: emailController.text,
        // mobileNo: mobileNoController.text,
        password: passwordController.text,
        // image: imgIntoString
      );
      int result = await helper.insertIntoUserTable(obj);

      if (result != 0) {
        _formKey.currentState.reset();
        return showDialog(
          context: context,
          child: AlertDialog(
            content: Text('Successfully saved'),
          ),
        );
      } else {
        return showDialog(
          context: context,
          child: AlertDialog(
            content: Text('Error!!'),
          ),
        );
      }
    }
  }

  onUpdate() async {
    if (_formKey.currentState.validate()) {
      User obj2 = User(
        id: obj.id,
        email: emailController.text,
        // mobileNo: mobileNoController.text,
        password: passwordController.text,
        // image: imgIntoString
      );
      int result = await helper.updateUser(obj2);
      if (result != 0) {
        //_formKey.currentState.reset();
        return showDialog(
          context: context,
          child: AlertDialog(
            content: Text('Successfully updated'),
          ),
        );
      } else {
        return showDialog(
          context: context,
          child: AlertDialog(
            content: Text('Error!!'),
          ),
        );
      }
    }
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: mBackgroundColor,
    elevation: 5,
    centerTitle: true,
    title: Text(
      'Sign Up',
      style: TextStyle(
        color: mPrimaryTextColor,
      ),
    ),
  );
}
