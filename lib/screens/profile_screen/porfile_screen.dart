import 'package:airtell_app/screens/profile_screen/boxes.dart';
import 'package:airtell_app/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 248, 251),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Material(
              elevation: 2,
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.24,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Subscriber ID",
                        style: GoogleFonts.poppins(
                            color: const Color(0xff999999), fontSize: 10),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "1598 2364 8564 2456 159",
                        style: GoogleFonts.poppins(
                          color: const Color(0xff333333),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        color: Color.fromARGB(40, 0, 0, 0),
                        width: MediaQuery.of(context).size.width,
                        height: 0.5,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Upcoming billing date",
                        style: GoogleFonts.poppins(
                            color: const Color(0xff999999), fontSize: 10),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            "5 Nov, 2018",
                            style: GoogleFonts.poppins(
                              color: const Color(0xff333333),
                            ),
                          ),
                          Expanded(child: Container()),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "more details >>",
                              style: GoogleFonts.poppins(
                                  color: const Color(0xffD6001B), fontSize: 12),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Boxes(
              onclick: () {},
              image: "assets/icons/bills_icon.png",
              name: "Bills & Payments",
            ),
            const SizedBox(
              height: 12,
            ),
            Boxes(
              onclick: () {},
              image: "assets/icons/portal_settings_icon.png",
              name: "Portal settings",
            ),
            const SizedBox(
              height: 12,
            ),
            Boxes(
              onclick: () {},
              image: "assets/icons/broadband_settigns_icon.png",
              name: "Broadband settigns",
            ),
            const SizedBox(
              height: 12,
            ),
            Boxes(
              onclick: () {},
              image: "assets/icons/support_icon.png",
              name: "Support",
            ),
            const SizedBox(
              height: 12,
            ),
            Boxes(
              onclick: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WelcomeScreen(),
                    ));
              },
              image: "assets/icons/sigout_icon.png",
              name: "Signout",
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
