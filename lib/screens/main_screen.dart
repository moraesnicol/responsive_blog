import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_blog/constants.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              width: double.infinity,
              color: kDarkBlackColor,
              child: SafeArea(
                  child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(kDefaultPadding),
                    constraints: BoxConstraints(maxWidth: kMaxWidth),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/logo.svg"),
                        Spacer(),
                        WebMenu(),
                        Spacer(),
                      ],
                    ),
                  )
                ],
              )))
        ],
      ),
    );
  }
}

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
