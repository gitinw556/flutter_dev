import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dev/color.dart';
import 'package:flutter_dev/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chiang Mai Travel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme:
            GoogleFonts.merriweatherTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      //home: WeatherScreen(),
    );
  }
}
