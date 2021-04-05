import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_blog/controllers/MenuController.dart';

import '../../constants.dart';

class WebMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        _controller.menuItem.length,
        (index) => WebMenuItem(
          text: _controller.menuItem[index],
          isActive: true,
          press: () {},
        ),
      ),
    );
  }
}

class WebMenuItem extends StatelessWidget {
  const WebMenuItem(
      {Key key,
      @required this.isActive,
      @required this.text,
      @required this.press})
      : super(key: key);

  final bool isActive;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: isActive ? kPrimaryColor : Colors.transparent,
          width: 3,
        ))),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.normal),
        ),
      ),
    );
  }
}
