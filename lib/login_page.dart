import 'package:flutter/material.dart';
import 'package:flutter_dev/Facebook/signupfacebook.dart';
import 'package:flutter_dev/Google/signupgoogle.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/testIM.png'))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '|一一一一  Login to continue  一一一一|',
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
/////////// Login Google //////////////
              GoogleSignApp(),
/////////// Login Facebook ///////////
              FacebookSignUp(),
            ],
          ),
        ],
      ),
    );
  }
}
