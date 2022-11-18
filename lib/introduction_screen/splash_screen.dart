import 'dart:async';

import 'package:find_doctor/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'onboarding_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool alreadyUsed=false;
  void getData()async{
    final prefs = await SharedPreferences.getInstance();
    alreadyUsed =prefs.getBool("alreadyUsed")??false;
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    Timer(Duration(seconds: 3), ()=>Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) {
          return alreadyUsed?HomePage() :OnBoardingScreen();
        })));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.deepPurpleAccent,
          child: Stack(

            children: [
             Center(
               child: Image.asset('assets/images/splash.png'),
             )
            ],
          ),
        ),
      ),
    );
  }
}