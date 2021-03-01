import 'package:flutter/material.dart';
import 'package:gokullu/Database/database_helper.dart';
import 'package:gokullu/SignUp/e_form.dart';
import 'package:gokullu/SignUp/signupform.dart';
import 'package:gokullu/screen/about/about_app.dart';
// import 'package:gokullu/userscreen/userscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constant.dart';
// import 'signupimages.dart';
// import 'signupintroduce.dart';

class EmergencyDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EmergencyDetails();
}

class _EmergencyDetails extends State<EmergencyDetails> {
  final _addressTextController = TextEditingController();
  final _emerContact1TextController = TextEditingController();
  final _emerContact2TextController = TextEditingController();
  final _emerPhone1TextController = TextEditingController();
  final _emerPhone2TextController = TextEditingController();

  Map<String, dynamic> _userDataMap = Map<String, dynamic>();

  PageController _pageController = PageController();

  String _nextText = 'Next';
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

  @override
  void initState() {
    _query();
    _userDataMap['gender'] = 'Male';
    _userDataMap['term'] = false;
    super.initState();
  }

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
                margin: const EdgeInsets.only(top: 100.0, right: 15, left: 15),
                padding: const EdgeInsets.only(top: 10, bottom: 24),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.grey[400]),
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 500,
                      child: PageView(
                        onPageChanged: (int page) {
                          print('the pageView page is $page');
                          if (page == 2) {
                            setState(() {
                              _nextText = 'Submit';
                              _nextColor = Colors.purple[700];
                            });
                          } else {
                            setState(() {
                              _nextText = 'Submit';
                              _nextColor = mPrimaryColor;
                            });
                          }
                        },
                        controller: _pageController,
                        children: <Widget>[
                          EmergencyForm(
                              _addressTextController,
                              _emerContact1TextController,
                              _emerPhone1TextController,
                              _emerContact2TextController,
                              _emerPhone2TextController,
                              _updateMyTitle),
                          // SignUpImages(_updateMyTitle),
                          // SignUpIntroduce(_introduceTextController)
                        ],
                      ),
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
                                    style: TextStyle(fontSize: 28),
                                  ),
                                ],
                              ),
                              textColor: Colors.black,
                              color: Colors.white,
                              padding: EdgeInsets.all(10),
                              onPressed: () {
                                print('email: ${_addressTextController.text}');
                                print(
                                    'password: ${_emerContact1TextController.text}');
                                print(
                                    'name: ${_emerPhone1TextController.text}');
                                print(
                                    'mobile: ${_emerContact2TextController.text}');
                                print(
                                    'intro: ${_emerPhone2TextController.text}');

                                print('_userDataMap $_userDataMap');
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
                                    style: TextStyle(fontSize: 28),
                                  ),
                                ],
                              ),
                              textColor: Colors.white,
                              color: _nextColor,
                              padding: EdgeInsets.all(10),
                              onPressed: () {
                                if (_pageController.page.toInt() == 0) {
                                  print('last page');
                                  _insert();
                                  _setIsLogin();
                                  print(
                                      'email: ${_addressTextController.text}');
                                  print(
                                      'password: ${_emerContact1TextController.text}');
                                  print(
                                      'name: ${_emerPhone1TextController.text}');
                                  print(
                                      'mobile: ${_emerContact2TextController.text}');
                                  print(
                                      'intro: ${_emerPhone2TextController.text}');

                                  print('_userDataMap $_userDataMap');

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AboutApp()),
                                  );
                                } else {
                                  _pageController.animateToPage(
                                      _pageController.page.toInt() + 1,
                                      duration: Duration(milliseconds: 200),
                                      curve: Curves.easeIn);
                                }
                              },
                            ),
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
      DatabaseHelper.columnName: _addressTextController.text,
      DatabaseHelper.columnGender: _userDataMap['gender'],
      DatabaseHelper.columnEmail: _emerContact1TextController.text,
      DatabaseHelper.columnPassword: _emerPhone1TextController.text,
      // DatabaseHelper.columnAge: _userDataMap['age'],
      DatabaseHelper.columnMobile: _emerContact2TextController.text,
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
