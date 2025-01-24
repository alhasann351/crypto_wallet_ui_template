import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackButtonDesign extends StatelessWidget {
  const BackButtonDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(
            CupertinoIcons.back,
          ),
        ),
      ),
    );
  }
}
