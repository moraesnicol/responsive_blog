
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class WebMenu extends StatelessWidget {
  const WebMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: kPrimaryColor,
        width: 3,
      ))),
      child: Text(
        'Blog',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
