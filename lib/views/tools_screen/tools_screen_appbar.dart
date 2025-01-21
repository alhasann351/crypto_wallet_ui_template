import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ToolsScreenAppbar extends StatelessWidget {
  const ToolsScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: AppBar(
        centerTitle: true,
        title: AutoSizeText(
          minFontSize: 22,
          maxFontSize: 26,
          'tools_screen_title'.tr,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontFamily: 'amaranth',
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
