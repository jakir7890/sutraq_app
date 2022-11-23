import 'package:flutter/material.dart';
import 'package:squrart_app/constants.dart';
import '../size_config.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: SizedBox(
        width: double.maxFinite,
        height: getProportionateScreenHeight(60),
        child: MaterialButton(
            textColor: AppColors.white,
            color: AppColors.kbuttonColor,
            onPressed: () {},
            child: Text(
              "LOGIN",
              style: TextStyle(fontSize: getProportionateScrenWidth(20)),
            )),
      ),
    );
  }
}
