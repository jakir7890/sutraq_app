import 'package:flutter/material.dart';
import 'package:squrart_app/constants.dart';
import 'package:squrart_app/size_config.dart';
import 'package:squrart_app/widgets/button.dart';

class TipScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/tip_bg.png'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(),
                ),
                Button(
                  buttonColor: AppColors.kprimaryColor,
                  buttonText: 'Got It!',
                  onpress: () {},
                ),
                space = SizedBox(
                  height: getProportionateScreenHeight(80),
                )
              ],
            ),
          )),
    );
  }
}
