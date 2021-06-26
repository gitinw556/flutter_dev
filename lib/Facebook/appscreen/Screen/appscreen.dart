import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_dev/Facebook/appscreen/Componets/drawerview.dart';
import 'package:flutter_dev/Facebook/appscreen/Componets/recommended.dart';
import 'package:flutter_dev/Facebook/appscreen/Componets/theplace.dart';

class AppScreen extends StatefulWidget {
  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.lightBlue[700],
          title: Text('      Chiang Mai Travel',
              style: TextStyle(
                  fontFamily: 'FredokaOne',
                  fontSize: 25,
                  color: Colors.white))),
      drawer: DrawerView(),
      body: ListView(children: <Widget>[
        SizedBox(
          height: 250.0,
          width: double.infinity,
          child: Carousel(
            dotSize: 4.0,
            dotSpacing: 15.0,
            dotColor: Colors.grey,
            indicatorBgPadding: 5.0,
            dotBgColor: Colors.transparent,
            dotVerticalPadding: 5.0,
            images: [
              Image.asset(
                'assets/images/travel1.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/travel2.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/travel3.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/travel4.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/travel5.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/travel6.jpg',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        Recommended(),
        Container(
          height: 320.0,
          child: ThePlace(),
        ),
        Spacer(),
      ]),
    );
  }
}
