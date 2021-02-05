import 'package:flutter/material.dart';
import 'package:gokullu/screen/login/widget/input_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          InputTextField(
            keyboardType: TextInputType.phone,
            label: 'Mobile',
            onChange: (value) {},
          ),
          SizedBox(
            height: 16,
          ),
          InputTextField(
            label: 'PIN',
            password: true,
            onChange: (value) {},
          ),
          SizedBox(
            height: 16,
          ),
          InputTextField(
            label: 'Confirm PIN',
            password: true,
            onChange: (value) {},
          ),
        ],
      ),
    );
  }
}
