import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dev/login_page.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

enum DialogsAction { yes, cancel }

class AlertDialogs {
  static Future<DialogsAction> yesCancelDialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(body),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(context).pop(DialogsAction.cancel),
              child: Text(
                'Cancel',
                style: TextStyle(
                    color: Colors.lightBlue[900], fontWeight: FontWeight.bold),
              ),
            ),
            FlatButton(
              onPressed: () async {
                await facebooklogout();

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text(
                'Confirm',
                style: TextStyle(
                    color: Colors.lightBlue[900], fontWeight: FontWeight.w700),
              ),
            )
          ],
        );
      },
    );
    return (action != null) ? action : DialogsAction.cancel;
  }
}

Future facebooklogout() async {
  final FacebookLogin _facebookLogin = FacebookLogin();
  await _facebookLogin.logOut();
  FirebaseAuth.instance.signOut();
}

