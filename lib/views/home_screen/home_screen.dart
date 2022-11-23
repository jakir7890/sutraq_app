import 'package:flutter/material.dart';

import 'package:squrart_app/views/onboarding/onboarding.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Onboarding(),
                  ));
            },
            child: Text('Go to next')),
      ),
    );
  }
}
