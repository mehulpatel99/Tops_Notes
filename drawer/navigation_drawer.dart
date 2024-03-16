import 'package:flutter/material.dart';
import 'package:myproject/drawer/dashboard_screen.dart';
import 'package:myproject/drawer/drawer_header.dart';
import 'package:myproject/drawer/setting_screen.dart';

class mydrawer2 extends StatefulWidget {
  const mydrawer2({super.key});

  @override
  State<mydrawer2> createState() => _mydrawer2State();
}

enum drawersection { Dashboard, Setting, Profile, About }

var mainContainer;

var currentPage = drawersection.Dashboard;

class _mydrawer2State extends State<mydrawer2> {
  @override
  Widget build(BuildContext context) {
    setpage();
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
      ),
      body: mainContainer,
      drawer: Drawer(
          child: Column(
        children: [
          drawerheader(),
          mydrawerlist(),
        ],
      )),
    );
  }

  Widget mydrawerlist() {
    return Container(
      child: Column(
        children: [
          menuitem(1, 'dashboard', Icons.dashboard,
              currentPage == drawersection.Dashboard ? true : false),
          menuitem(2, 'setting', Icons.settings,
              currentPage == drawersection.Setting ? true : false),
          menuitem(3, 'profile', Icons.account_box,
              currentPage == drawersection.Profile ? true : false),
          menuitem(4, 'About', Icons.info,
              currentPage == drawersection.About ? true : false),
        ],
      ),
    );
  }

  Widget menuitem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey : Colors.white,
      child: Container(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
            setState(() {
              if (id == 1) {
                print("====>> Dashboard clicked");
                currentPage = drawersection.Dashboard;
                print("---->>> current page onn menu click $currentPage");
              } else if (id == 2) {
                currentPage = drawersection.Setting;
              } else if (id == 3) {
                currentPage = drawersection.Profile;
              } else if (id == 4) {
                currentPage = drawersection.About;
              }
            });
          },
          child: Row(
            children: [Icon(icon), Text(title)],
          ),
        ),
      ),
    );
  }

  void setpage() {
    print("_----->>> Current page $currentPage");
    if (currentPage == drawersection.Dashboard) {
      mainContainer = dashboardscreen();
    } else if (currentPage == drawersection.Setting) {
      mainContainer = setting_screen();
    }
  }
}
