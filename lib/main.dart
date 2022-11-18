import 'package:find_doctor/screen/card.dart';
import 'package:find_doctor/screen/home_page.dart';
import 'package:find_doctor/screen_2/mainHomeScreen.dart';
import 'package:find_doctor/widget/card_design.dart';
import 'package:flutter/material.dart';

import 'drawer/drawer_sction.dart';
import 'drawer/home_page.dart';
import 'introduction_screen/splash_screen.dart';
import 'login/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:LandingScreen()
    );
  }
}
