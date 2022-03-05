import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class ViewDetailedUsage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 248, 251),
      appBar: CustomAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            TabBar(context),
            const SizedBox(
              height: 30,
            ),
            Card(context),
            const SizedBox(
              height: 30,
            ),
            Card(context),
            const SizedBox(
              height: 30,
            ),
            Card(context),
            const SizedBox(
              height: 30,
            ),
            Card(context),
          ],
        ),
      ),
    );
  }
}

Widget Card(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 16, right: 16),
    child: Material(
      elevation: 3,
      child: Container(
        padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
        width: MediaQuery.of(context).size.width,
        height: 155,
        color: Colors.white,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Mon, Nov 4 - 2019",
                style: GoogleFonts.poppins(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffFF00EE),
                borderRadius: BorderRadius.circular(4),
              ),
              height: 13,
              child: Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffFFCE00),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      bottomLeft: Radius.circular(4),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 0.5,
              color: Color.fromARGB(33, 0, 0, 0),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 18,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Total data",
                      style: GoogleFonts.poppins(
                          color: const Color(0xff666666), fontSize: 12),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "10 GB",
                      style: GoogleFonts.oswald(
                          color: const Color(0xff666666), fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 25,
                ),
                Container(
                  color: const Color.fromARGB(29, 0, 0, 0),
                  height: 80,
                  width: 0.5,
                ),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Used data",
                      style: GoogleFonts.poppins(
                          color: const Color(0xffFFCE00), fontSize: 12),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "7.5 GB",
                      style: GoogleFonts.oswald(
                          color: const Color(0xffFFCE00), fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 25,
                ),
                Container(
                  color: Color.fromARGB(15, 0, 0, 0),
                  height: 81,
                  width: 0.7,
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Free data",
                      style: GoogleFonts.poppins(
                          color: const Color(0xffFF00EE), fontSize: 12),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "2.5 GB",
                      style: GoogleFonts.oswald(
                          color: const Color(0xffFF00EE5), fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget TabBar(BuildContext context) {
  return DefaultTabController(
    length: 3,
    child: Padding(
      padding: const EdgeInsets.only(left: 6.0, right: 8),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(50)),
        child: ButtonsTabBar(
          height: 60,
          radius: 40,
          backgroundColor: Color(0xffD6001B),
          unselectedBackgroundColor: Colors.white,
          tabs: [
            Tab(
              child: Container(
                width: 110,
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Daily",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Color(0xff999999),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Tab(
              child: Container(
                width: 110,
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Weekly",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Color(0xff999999),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Tab(
              child: Container(
                width: 110,
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Monthly",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          color: Color(0xff999999), fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

PreferredSizeWidget CustomAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Color(0xffffffff),
    centerTitle: true,
    title: Text(
      "USAGE DETAILS",
      style: GoogleFonts.poppins(color: Color(0XFF333333), fontSize: 16),
    ),
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Image.asset("assets/icons/arrow_back_icon.png"),
    ),
    actions: [Image.asset("assets/icons/settings_icon.png")],
  );
}
