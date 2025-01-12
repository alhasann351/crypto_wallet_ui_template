import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveWidget(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 480;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width > 480 &&
      MediaQuery.of(context).size.width < 1024;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width <= 480) {
      return mobile;
    } else if (size.width > 480 && size.width < 1024) {
      return tablet;
    } else {
      return desktop;
    }
  }
}
