import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive(
      {Key key,
      @required this.mobile,
      @required this.tablet,
      @required this.desktop})
      : super(key: key);

//Maybe you need some customization depends on your design
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 900 &&
      MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 900;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        //if my width is more than 900 then  we consider it a desktop
        if (constraints.maxWidth >= 900) {
          return desktop;
        }
        //if my width is less then  900 and more 650  we consider it a tablet
        else if (constraints.maxWidth >= 650) {
          return tablet;
        }
        //or less then that we called it mobile 
          else   {
          return mobile;
        }
      
      },
    );
  }
}
