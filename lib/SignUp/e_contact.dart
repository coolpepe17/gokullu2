import 'package:contact_picker/contact_picker.dart';
import 'package:flutter/material.dart';
import 'package:gokullu/constant.dart';

class EmerContact extends StatelessWidget {
  Future<String> openContactBook() async {
    Contact contact = await ContactPicker().selectContact();
    if (contact != null) {
      var phoneNumber = contact.phoneNumber.number
          .toString()
          .replaceAll(new RegExp(r"\s+"), "");
      return phoneNumber;
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Emergency Contacts',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: mPrimaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              // Text("Hi"),
              Icon(Icons.mail_outline, size: 30),

              Text(
                '  hpkul[at]nic[dot]in',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: mPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ]),
            SizedBox(height: 15),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              // Text("Hi"),
              Icon(Icons.phone_callback, size: 30),
              Text(
                '  01902224130',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: mPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ]),
            // SizedBox(
            //   width: 360,
            //   child: Text(
            //     'Phone: 01902224130',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //       color: mPrimaryColor,
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
          ]),
    );
  }
}
