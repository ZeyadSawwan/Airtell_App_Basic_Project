import 'package:airtell_app/models/connected_devices.dart';
import 'package:airtell_app/screens/modem_screen/box.dart';
import 'package:airtell_app/screens/modem_screen/modem_bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModemScreen extends StatefulWidget {
  @override
  State<ModemScreen> createState() => _ModemScreenState();
}

class _ModemScreenState extends State<ModemScreen> {
  var bloc = ModemBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F8FB),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Material(
                elevation: 2,
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.61,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Text(
                              "Kalutara",
                              style: GoogleFonts.poppins(
                                color: const Color(0xff333333),
                              ),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Change tower",
                                style: GoogleFonts.poppins(
                                    color: const Color(0xffD6001B),
                                    fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Row(
                          children: [
                            Text(
                              "Last updated on",
                              style: GoogleFonts.poppins(
                                  color: const Color(0xff999999), fontSize: 10),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              "1:15 PM, Fri, Nov 1, 2019",
                              style: GoogleFonts.poppins(
                                  color: const Color(0xff666666), fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Text(
                              "Updates every 60mins automatically",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff999999), fontSize: 10),
                            ),
                            Expanded(child: Container()),
                            InkWell(
                                onTap: () {},
                                child: Image.asset(
                                    "assets/icons/refresh_icon.png"))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 0.5,
                          color: Color.fromARGB(10, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Box(
                                borderColor:
                                    const Color.fromARGB(143, 222, 24, 24),
                                boxColor: const Color.fromARGB(19, 222, 24, 24),
                                image: "assets/icons/wifi_icon.png",
                                name: "Signal strenth",
                                percentage: "%",
                                percentageColor: const Color(0xffDE1818),
                                number: 85,
                                numberColor: const Color(0xffDE1818)),
                            const SizedBox(
                              width: 12,
                            ),
                            Box(
                              borderColor: Color.fromARGB(148, 0, 157, 255),
                              boxColor: Color.fromARGB(24, 0, 157, 255),
                              image: "assets/icons/ping_rate_icon.png",
                              name: "Ping rate",
                              percentage: "ms",
                              percentageColor: const Color(0xff009DFF),
                              number: 14,
                              numberColor: const Color(0xff009DFF),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Box(
                              borderColor: Colors.white,
                              boxColor: Colors.white,
                              image: "assets/icons/download_icon.png",
                              name: "Download speed",
                              percentage: "mb/s",
                              percentageColor: const Color(0xffFFCE00),
                              number: 210.8,
                              numberColor: const Color(0xffFFCE00),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Box(
                              borderColor: Color.fromARGB(146, 255, 0, 238),
                              boxColor: Color.fromARGB(24, 255, 0, 238),
                              image: "assets/icons/upload_icon.png",
                              name: "Upload speed",
                              percentage: "mb/s",
                              percentageColor: Color(0xffFF00EE),
                              number: 11.8,
                              numberColor: const Color(0xffFF00EE),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
              elevation: 3,
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 16, bottom: 8),
                      child: Text(
                        "Connected devices",
                        style: GoogleFonts.poppins(
                          color: const Color(0xff333333),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 0.5,
                      color: Color.fromARGB(71, 0, 0, 0),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.26,
                      child: ListView.builder(
                          itemCount: bloc.listOfConnectedDevices.length,
                          itemBuilder: (context, index) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              height: 75,
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          bloc.listOfConnectedDevices[index]
                                              .deviceImage,
                                        ),
                                        Container(
                                          width: 40,
                                          height: 12,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              bloc.listOfConnectedDevices[index]
                                                  .deviceType,
                                              style: GoogleFonts.poppins(
                                                  color: Color(0xff999999),
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      children: [
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          bloc.listOfConnectedDevices[index]
                                              .deviceName,
                                          style: GoogleFonts.poppins(
                                              color: Color(0xff333333),
                                              fontSize: 12),
                                        ),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          bloc.listOfConnectedDevices[index]
                                              .serialNumber,
                                          style: GoogleFonts.poppins(
                                              color: Color(0xff666666),
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                    Expanded(child: Container()),
                                    InkWell(
                                      onTap: () {
                                        bloc.disconnectDevice(index);
                                        setState(() {});
                                      },
                                      child: Text(
                                        "Disconnect",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xffD6001B),
                                            fontSize: 12),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
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
