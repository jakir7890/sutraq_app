import 'package:flutter/material.dart';
import 'package:squrart_app/constants.dart';
import '../size_config.dart';

class Button extends StatelessWidget {
   Button({super.key, required this.onpress, this.buttonColor =  AppColors.kbuttonColor});
   VoidCallback onpress;
   Color buttonColor ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: SizedBox(
        width: double.maxFinite,
        height: getProportionateScreenHeight(60),
        child: MaterialButton(
            textColor: AppColors.white,
            color: buttonColor,
            onPressed: onpress,
            child: Text(
              "LOGIN",
              style: TextStyle(fontSize: getProportionateScrenWidth(20)),
            )),
      ),
    );
  }
}
