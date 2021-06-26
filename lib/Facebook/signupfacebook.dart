import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dev/Facebook/welcome/welcome.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert' as JSON;
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FacebookSignUp extends StatefulWidget {
  @override
  _FacebookSignUpState createState() => _FacebookSignUpState();
}

class _FacebookSignUpState extends State<FacebookSignUp> {
  FacebookSignUp _user;
  FacebookSignUp get user => _user;
  final FacebookLogin _facebookLogin = FacebookLogin();
  Future facebookLogin() async {
    FacebookLoginResult _result = await _facebookLogin.logIn(['email']);
    switch (_result.status) {
      case FacebookLoginStatus.cancelledByUser:
        print("cencelledByUser");
        break;
      case FacebookLoginStatus.error:
        print("Error");
        break;
      case FacebookLoginStatus.loggedIn:
        await loginWithFacebook(_result);
    }
  }

  Future loginWithFacebook(FacebookLoginResult _result) async {
    FacebookAccessToken _accessToken = _result.accessToken;
    AuthCredential credential =
        FacebookAuthProvider.credential(_accessToken.token);
    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future facebooklogout() async {
    await _facebookLogin.logOut();
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.0,
      child: Align(
        alignment: Alignment.center,
        child: RaisedButton(
          onPressed: () async {
            await facebookLogin();

            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => WelcomeScreen()));
          },
          color: Colors.blue[900],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                FontAwesomeIcons.facebook,
                color: Colors.white,
              ),
              Text(
                '    Login with Facebook',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
