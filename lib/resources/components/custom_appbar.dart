import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final Widget backButton;
  final String title;
  const CustomAppbar(
      {super.key, required this.backButton, required this.title});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;

    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 5),
      child: AppBar(
        title: AutoSizeText(
          minFontSize: 22,
          maxFontSize: 26,
          title,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontFamily: 'amaranth',
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leadingWidth: 40,
        leading: backButton,
      ),
    );
  }
}
