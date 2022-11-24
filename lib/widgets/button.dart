import 'package:flutter/material.dart';
import 'package:squrart_app/constants.dart';
import '../size_config.dart';

class Button extends StatelessWidget {
  Button(
      {super.key,
      required this.onpress,
      this.buttonColor = AppColors.kbuttonColor,
      this.buttonText = 'LOGIN'});
  VoidCallback onpress;
  Color buttonColor;
  String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: getProportionateScreenHeight(60),
      child: MaterialButton(
          textColor: AppColors.white,
          color: buttonColor,
          onPressed: onpress,
          child: Text(
            buttonText,
            style: TextStyle(fontSize: getProportionateScrenWidth(20)),
          )),
    );
  }
}
