import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomRoundButton extends StatelessWidget {
  final String buttonName;
  final Icon? icon;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final VoidCallback voidCallback;
  const CustomRoundButton(
      {super.key,
      required this.buttonName,
      this.icon,
      this.backgroundColor,
      this.textStyle,
      required this.voidCallback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        voidCallback.call();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
      child: icon != null
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                icon!,
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: AutoSizeText(
                    buttonName,
                    minFontSize: 16,
                    maxFontSize: 18,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: textStyle,
                  ),
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.all(5.0),
              child: AutoSizeText(
                buttonName,
                minFontSize: 16,
                maxFontSize: 18,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: textStyle,
              ),
            ),
    );
  }
}
