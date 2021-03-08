import 'package:flutter/material.dart';
import 'package:gokullu/Database/database_helper.dart';
import 'package:gokullu/SignUp/signupform.dart';
import 'package:gokullu/screen/about/about_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constant.dart';

class SignUpWithMail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpWithMail();
}

class _SignUpWithMail extends State<SignUpWithMail> {
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _confirmPasswordTextController = TextEditingController();
  final _nameTextController = TextEditingController();
  final _mobileTextController = TextEditingController();
  final _addressTextController = TextEditingController();
  final _eContact1TextController = TextEditingController();
  final _ePhone1TextController = TextEditingController();
  final _eContact2TextController = TextEditingController();
  final _ePhone2TextController = TextEditingController();
  // final _introduceTextController = TextEditingController();

  Map<String, dynamic> _userDataMap = Map<String, dynamic>();

  // PageController _pageController = PageController();

  String _nextText = 'Submit';
  Color _nextColor = mPrimaryColor;

  _updateMyTitle(List<dynamic> data) {
    setState(() {
      _userDataMap[data[0]] = data[1];
    });
  }

  _setIsLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLogin', true);
  }

  // reference to our single class that manages the database
  final dbHelper = DatabaseHelper.instance;

  // @override
  // void initState() {
  //   _query();
  //   _userDataMap['gender'] = 'Male';
  //   _userDataMap['term'] = false;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            // decoration: BoxDecoration(
            //     image: DecorationImage(
            //         image: NetworkImage(
            //             'https://cdn.pixabay.com/photo/2020/03/19/04/58/coconut-trees-4946270_1280.jpg'),
            //         fit: BoxFit.fill)),
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 50.0, right: 15, left: 15),
                padding: const EdgeInsets.only(top: 10, bottom: 24),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.grey[400]),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 600,
                      child: SignUpForm(
                          _emailTextController,
                          _passwordTextController,
                          _confirmPasswordTextController,
                          _nameTextController,
                          _mobileTextController,
                          _addressTextController,
                          _eContact1TextController,
                          _ePhone1TextController,
                          _eContact2TextController,
                          _ePhone2TextController,
                          _updateMyTitle),
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(12.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Cancel',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              ),
                              textColor: Colors.black,
                              color: Colors.white,
                              padding: EdgeInsets.all(10),
                              onPressed: () {
                                // print('email: ${_emailTextController.text}');
                                // print(
                                //     'password: ${_passwordTextController.text}');
                                // print('name: ${_nameTextController.text}');
                                // print(
                                //     'confirmPassword: ${_confirmPasswordTextController.text}');
                                // print('mobile: ${_mobileTextController.text}');
                                // print('email: ${_addressTextController.text}');
                                // print(
                                //     'password: ${_eContact1TextController.text}');
                                // print('name: ${_ePhone1TextController.text}');
                                // print(
                                //     'mobile: ${_eContact2TextController.text}');
                                // print('intro: ${_ePhone2TextController.text}');

                                // print('_userDataMap $_userDataMap');
                                Navigator.pop(context);
//                              _query();
                              },
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(12.0),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      _nextText,
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ],
                                ),
                                textColor: Colors.white,
                                color: _nextColor,
                                padding: EdgeInsets.all(10),
                                onPressed: () {
                                  // if (_pageController.page.toInt() == 0) {
                                  print('email: ${_emailTextController.text}');
                                  print(
                                      'password: ${_passwordTextController.text}');
                                  print(
                                      'confirmPassword: ${_confirmPasswordTextController.text}');
                                  print('name: ${_nameTextController.text}');
                                  print(
                                      'mobile: ${_mobileTextController.text}');
                                  print(
                                      'email: ${_addressTextController.text}');
                                  print(
                                      'password: ${_eContact1TextController.text}');
                                  print('name: ${_ePhone1TextController.text}');
                                  print(
                                      'mobile: ${_eContact2TextController.text}');
                                  print(
                                      'intro: ${_ePhone2TextController.text}');
                                  _insert();
                                  _setIsLogin();

                                  // print('_userDataMap $_userDataMap');

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AboutApp()),
                                  );
                                  // } else {
                                  //   _pageController.animateToPage(
                                  //       _pageController.page.toInt() + 1,
                                  //       duration: Duration(milliseconds: 200),
                                  //       curve: Curves.easeIn);
                                }),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }

  // Button onPressed methods

  void _insert() async {
    // row to insert
    Map<String, dynamic> row = {
      DatabaseHelper.columnName: _nameTextController.text,
      // DatabaseHelper.columnGender: _userDataMap['gender'],
      DatabaseHelper.columnEmail: _emailTextController.text,
      DatabaseHelper.columnPassword: _passwordTextController.text,
      DatabaseHelper.columnPassword: _confirmPasswordTextController.text,
      // DatabaseHelper.columnAge: _userDataMap['age'],
      DatabaseHelper.columnMobile: _mobileTextController.text,
      DatabaseHelper.columnAddress: _addressTextController.text,
      DatabaseHelper.columnEContact1: _eContact1TextController.text,
      DatabaseHelper.columnEPhone1: _ePhone1TextController.text,
      DatabaseHelper.columnEContact2: _eContact2TextController.text,
      DatabaseHelper.columnEPhone2: _ePhone2TextController.text,

      // DatabaseHelper.columnImageOne: _userDataMap['image0'],
      // DatabaseHelper.columnImageTwo: _userDataMap['image1'],
      // DatabaseHelper.columnImageThree: _userDataMap['image2'],
      // DatabaseHelper.columnImageFour: _userDataMap['image3'],
      // DatabaseHelper.columnImageIntro: _introduceTextController.text,
    };
    final id = await dbHelper.insert(row);
    print('inserted row id: $id');
  }

  void _query() async {
    final allRows = await dbHelper.queryAllRows();
    print('query all rows:');
    allRows.forEach((row) {
      print(row);
      // print('row age is ${row[DatabaseHelper.columnAge]}');
      return null;
    });
  }
}
