import 'package:flutter/material.dart';

import 'package:gokullu/screen/trek_menu/trek_menu.dart';
import 'package:gokullu/widget/round_button.dart';

class ViewMenu extends StatelessWidget {
  const ViewMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20,
      ),
      child: RoundButton(
        title: 'View Treks',
        press: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return TrekMenu();
              },
            ),
          );
        },
      ),
    );
  }
}
