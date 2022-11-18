import 'package:find_doctor/drawer/appoinments.dart';
import 'package:find_doctor/drawer/contact_us.dart';
import 'package:find_doctor/drawer/health_tips.dart';
import 'package:find_doctor/drawer/my_profile.dart';
import 'package:find_doctor/drawer/specialties.dart';
import 'package:find_doctor/navigation_bar/doctor.dart';
import 'package:find_doctor/screen/home_page.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'find_us.dart';
import 'home_care.dart';
import 'home_page.dart';
import 'mangeappt.dart';
import 'my_headerdrawer.dart';

class Drawersection extends StatefulWidget {
  @override
  _DrawersectionState createState() => _DrawersectionState();
}

class _DrawersectionState extends State<Drawersection> {
  var currentPage = DrawerSections.home;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.home) {
      container = DrawerHomePage();
    } else if (currentPage == DrawerSections.dashboard) {
      container = DashBoard();
    } else if (currentPage == DrawerSections.report) {
      container = Doctor();
    } else if (currentPage == DrawerSections.doctor) {
      container = SpeciaList();
    } else if (currentPage == DrawerSections.specialities) {
      container = Appoinments();
    } else if (currentPage == DrawerSections.appoinment) {
      container = ManageAppt();
    } else if (currentPage == DrawerSections.management) {
      container = HomeCare();
    } else if (currentPage == DrawerSections.homecare) {
      container = FindUs();
    }
    else if (currentPage == DrawerSections.findus) {
      container = ContactUs();
    }
    else if (currentPage == DrawerSections.contactus) {
      container = HealthTips();
    }
    else if (currentPage == DrawerSections.healthtips) {
      container = MyProfile();
    }
    else if (currentPage == DrawerSections.myprofile) {
      container = MyProfile();
    }
    else if (currentPage == DrawerSections.settings) {
      container = MyProfile();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text("Hello, Ishtiuq",)),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      child: Column(
        children: [
          menuItem(1, "Home", "assets/icons/terrain.png",
              currentPage == DrawerSections.home ? true : false),
          menuItem(2, "DashBoard", "assets/icons/share.png",
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(3, "Report", "assets/icons/coffee.png",
              currentPage == DrawerSections.report ? true : false),
          Divider(),
          menuItem(4, "Doctors", "assets/icons/album.png",
              currentPage == DrawerSections.doctor ? true : false),

          menuItem(5, "Specialities", "assets/icons/menu-grid-o.png",
              currentPage == DrawerSections.specialities ? true : false),

          menuItem(6, "Appoinment","assets/icons/bolt.png",
              currentPage == DrawerSections.appoinment ? true : false),
          Divider(),
          menuItem(7, "ManageAppt.", "assets/icons/home2.png",
              currentPage == DrawerSections.management ? true : false),
          menuItem(8, "Home Care", "assets/icons/template.png",
              currentPage == DrawerSections.homecare ? true : false),
          menuItem(9, "Find Us", "assets/icons/Union.png",
              currentPage == DrawerSections.findus ? true : false),
          menuItem(10, "Contact Us", "assets/icons/folder.png",
              currentPage == DrawerSections.contactus ? true : false),
          menuItem(11, "Health Tip","assets/icons/profile.png",
              currentPage == DrawerSections.healthtips ? true : false),
          menuItem(12, "My Profile", "assets/icons/mouse.png",
              currentPage == DrawerSections.myprofile ? true : false),
          menuItem(13, "Settings","assets/icons/options.png",
              currentPage == DrawerSections.settings ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, String image, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.home;
            } else if (id == 2) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 3) {
              currentPage = DrawerSections.report;
            } else if (id == 4) {
              currentPage = DrawerSections.doctor;
            } else if (id == 5) {
              currentPage = DrawerSections.specialities;
            } else if (id == 6) {
              currentPage = DrawerSections.appoinment;
            } else if (id == 7) {
              currentPage = DrawerSections.management;
            } else if (id == 8) {
              currentPage = DrawerSections.homecare;
            }
            else if (id == 8) {
              currentPage = DrawerSections.findus;
            }
            else if (id == 8) {
              currentPage = DrawerSections.contactus;
            }
            else if (id == 8) {
              currentPage = DrawerSections.healthtips;
            }
            else if (id == 8) {
              currentPage = DrawerSections.myprofile;
            }
            else if (id == 8) {
              currentPage = DrawerSections.settings;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(
            children: [
              Expanded(
                child: Image.asset(image)
              ),
              Expanded(
                flex: 7,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  home,
  dashboard,
  report,
  doctor,
  specialities,
  appoinment,
  management,
  homecare,
  findus,
  contactus,
  healthtips,
  myprofile,
  settings,

}