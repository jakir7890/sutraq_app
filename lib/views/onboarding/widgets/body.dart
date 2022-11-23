import 'package:flutter/material.dart';
import 'package:squrart_app/constants.dart';
import 'package:squrart_app/size_config.dart';
import 'package:squrart_app/widgets/button.dart';
import './content.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  int currentIndex = 0;

  List<Map<String, String>> onboardinData = [
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemCount: onboardinData.length,
                  itemBuilder: (context, index) {
                    return OnboardinContent(
                      image: onboardinData[index]['image'],
                    );
                  },
                )),
            Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          onboardinData.length, (index) => dotIndicator(index)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.kprimaryColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Column(
                              children: List.generate(
                                  1, (index) => onboardingText(index)),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            Button(),
                            Text('TRY SUTRAQ',
                                style: TextStyle(
                                    fontSize: getProportionateScrenWidth(18),
                                    color: AppColors.white,
                                    fontWeight: FontWeight.bold)),
                            Spacer(
                              flex: 2,
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget onboardingText(int index) {
    index = currentIndex;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: getProportionateScreenHeight(40),
        ),
        Text(
          onboardinData[index]['title']!,
          style: TextStyle(
              fontSize: getProportionateScrenWidth(30),
              fontWeight: FontWeight.bold,
              color: AppColors.white),
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            onboardinData[index]['subtitle']!,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.white,
                fontSize: getProportionateScrenWidth(16)),
          ),
        ),
      ],
    );
  }

  AnimatedContainer dotIndicator(int index) {
    return AnimatedContainer(
        margin: EdgeInsets.all(5),
        height: 6,
        width: currentIndex == index ? 15 : 6,
        decoration: BoxDecoration(
            color: currentIndex == index
                ? AppColors.kprimaryColor
                : AppColors.kgrey,
            borderRadius: BorderRadius.circular(3)),
        duration: kAnimationDuration);
  }
}
