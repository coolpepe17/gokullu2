import 'package:flutter/material.dart';
import 'package:gokullu/screen/mob_reg/widget/form.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyForm(),
    );
  }
}
