import 'package:flutter/material.dart';
import 'package:squrart_app/size_config.dart';

class AppColors {
  AppColors._();

  static const Color white = Colors.white;
  static const Color kprimaryColor = Color(0xFF62BB46);
  static const Color kbuttonColor = Color(0xFF051F0E);
  static const Color kgrey = Colors.grey;
}

const String titleText = '';
const kAnimationDuration = Duration(milliseconds: 200);
const String logo = 'assets/logos/logo.png';

const List<Map<String, String>> onboardinData = [
  {
    "image": 'assets/images/1st.png',
    'title': 'Send Money Anywhere',
    'subtitle':
        'With our unique technology, you can get money anywhere in the world',
  },
  {
    "image": 'assets/images/2nd.png',
    'title': 'Safe & Secured',
    'subtitle':
        'Safety of your funds is guranteed, We\'ve got you coverd 24/7.',
  },
  {
    "image": 'assets/images/3rd.png',
    'title': 'Unbeatable Support',
    'subtitle':
        'Send money to other squart users free of chage, with no aditional fee.',
  }
];

const String fingerPrint = 'assets/icons/finger-print.png';

const Widget divider = Divider(
  endIndent: 0,
  indent: 0,
  height: 10,
  thickness: 0,
  color: Colors.transparent,
);


Widget space  =  SizedBox(height: getProportionateScreenHeight(50),);
