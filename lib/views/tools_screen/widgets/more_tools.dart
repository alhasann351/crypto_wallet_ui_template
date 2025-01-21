import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoreTools extends StatelessWidget {
  const MoreTools({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        spacing: 10,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: AutoSizeText(
              'more'.tr,
              minFontSize: 18,
              maxFontSize: 22,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'amaranth',
              ),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) =>
                  const SizedBox(height: 100, child: Card())),
        ],
      ),
    );
  }
}
