import 'package:flutter/material.dart';
import 'package:flutter_dev/Google/welcome/top_banner.dart';
import 'package:flutter_dev/Google/welcome/welcome_text.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBanner(),
            

            WelcomeText()
          ],
        ),
      ),
    );
  }
}