import 'package:flutter/material.dart';
import 'package:radwa_back/core/utils/styles.dart';

class CustomButtonWidget extends StatelessWidget {
   CustomButtonWidget({
    super.key,
    required this.buttonColor,
    required this.borderRadiusGeometry,
    required this.textColor,
    required this.text,
    required this.onPressed,
  });

  final Color buttonColor;
  final BorderRadiusGeometry borderRadiusGeometry;
  final Color textColor;
  final String text;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed:onPressed ,
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(borderRadius: borderRadiusGeometry),
        ),
        child: Text(
          text,
          style: Styles.styleText20.copyWith(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
