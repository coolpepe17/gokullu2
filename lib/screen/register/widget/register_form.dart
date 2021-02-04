import 'package:flutter/material.dart';
import 'package:gokullu/screen/register/widget/input_field.dart';

class RegForm extends StatelessWidget {
  const RegForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 15,
      ),
      child: SingleChildScrollView(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              children: <Widget>[
                InputTextField(
                  label: 'Name',
                  hint: 'Enter Name',
                  onChange: (value) {},
                ),
                SizedBox(
                  height: 5,
                ),
                InputTextField(
                  label: 'Fathers Name',
                  hint: 'Enter Fathers Name',
                  onChange: (value) {},
                ),
                SizedBox(
                  height: 5,
                ),
                // InputTextField(
                //   label: 'Mobile No',
                //   hint: 'Enter Mobile No.',
                //   onChange: (value) {},
                // ),
                // SizedBox(
                //   height: 5,
                // ),
                // InputTextField(
                //   label: 'Password',
                //   hint: 'Enter Password',
                //   password: true,
                //   onChange: (value) {},
                // ),
                // SizedBox(
                //   height: 5,
                // ),
                // InputTextField(
                //   label: 'Confirm Password',
                //   hint: 'Confirm Password',
                //   password: true,
                //   onChange: (value) {},
                // ),
                // SizedBox(
                //   height: 5,
                // ),
                InputTextField(
                  label: 'Address',
                  hint: 'Enter Address',
                  onChange: (value) {},
                ),
                SizedBox(
                  height: 5,
                ),
                InputTextField(
                  label: 'Emergency Contacts',
                  hint: '2 Emergency Contacts Seperated by comma',
                  onChange: (value) {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
