import 'package:airtell_app/models/connected_devices.dart';
import 'package:airtell_app/screens/home/home_bloc.dart';
import 'package:airtell_app/screens/modem_screen/modem_screen.dart';
import 'package:airtell_app/screens/profile_screen/porfile_screen.dart';
import 'package:airtell_app/screens/recharge_screen/recharge_screen.dart';
import 'package:airtell_app/screens/usage_screen/usage_screen.dart';
import 'package:airtell_app/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var bloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF4F8FB),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leadingWidth: 90,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Image.asset(
              "assets/images/sec_logo.png",
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notifications_none_outlined,
                size: 30,
                color: Color(0xff404040),
              ),
            )
          ],
        ),
        body: TabSelect(),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          iconSize: 28,
          selectedItemColor: Color(0xffD6001B),
          unselectedItemColor: Color(0xff999999),
          currentIndex: bloc.selectedindex,
          items: TabList,
          onTap: (index) {
            bloc.selectedindex = index;
            setState(() {});
          },
        ));
  }

  Widget TabSelect() {
    if (bloc.selectedindex == 0) {
      return UsageScreen();
    } else if (bloc.selectedindex == 1) {
      return RechargeScreen();
    } else if (bloc.selectedindex == 2) {
      return ModemScreen();
    } else {
      return ProfileScreen();
    }
  }
}

List<BottomNavigationBarItem> TabList = const [
  BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: "Usage"),
  BottomNavigationBarItem(icon: Icon(Icons.bolt_outlined), label: "ReCharge"),
  BottomNavigationBarItem(icon: Icon(Icons.router_outlined), label: "Modem"),
  BottomNavigationBarItem(
      icon: Icon(Icons.account_circle_outlined), label: "Profile"),
];
