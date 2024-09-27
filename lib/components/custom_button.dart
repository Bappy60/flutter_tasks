import 'package:flutter/material.dart';
import 'package:flutter_tasks/components/common_screen.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final int fontSize;
  final Color textColor;
  final bool shouldOverflow;
  final Color iconColor;
  final double iconSize;
  final double textPadding;
  final ButtonStyle buttonStyle;
  final void Function() onPressed;

  final IconData? leftIcon;
  final IconData? rightIcon;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.fontSize,
    required this.textColor,
    required this.shouldOverflow,
    required this.iconColor,
    required this.iconSize,
    required this.textPadding,
    required this.buttonStyle,
    this.leftIcon,
    this.rightIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: buttonStyle,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              leftIcon,
              color: iconColor,
              size: iconSize,
            ),
            SizedBox(width: textPadding),
            Expanded(
              child: Text(
                text,
                overflow: shouldOverflow ? TextOverflow.ellipsis : null,
                style: TextStyle(
                  fontSize: fontSize.toDouble(),
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(width: textPadding),
            Icon(
              rightIcon,
              color: iconColor,
              size: iconSize,
            ),
          ],
        ),
      );
  }
}
