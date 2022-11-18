import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:find_doctor/navigation_bar/appt.dart';
import 'package:find_doctor/navigation_bar/doctor.dart';
import 'package:find_doctor/navigation_bar/home.dart';
import 'package:find_doctor/navigation_bar/profile.dart';
import 'package:find_doctor/navigation_bar/report.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectindex=0;
  List<Widget>_widgetlist=[Doctor(),Appt(),Home(),Report(),Profile()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: _widgetlist[selectindex],
          bottomNavigationBar: ConvexAppBar(
            items: [
              TabItem(
                  icon: ClipRRect(

                  borderRadius: BorderRadius.circular(22),
                  child: Image.asset('assets/icons/doctor.png')), title: 'Doctor'),
              TabItem(icon:Image.asset('assets/icons/appt.png'), title: 'Appt.'),
              TabItem(icon: Image.asset('assets/icons/home.png'), title: 'Home'),
              TabItem(icon: Image.asset('assets/icons/report.png'), title: 'Report'),
              TabItem(icon:Image.asset('assets/icons/profile.png'), title: 'Profile'),
            ],
            initialActiveIndex: 0,
            onTap:updateindex,
          )
      ),
    );
  }

  void updateindex(index){
    setState(() {
      selectindex=index;
    });
  }
}
