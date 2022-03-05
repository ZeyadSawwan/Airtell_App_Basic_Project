import 'package:airtell_app/screens/usage_screen/usage_bloc.dart';
import 'package:airtell_app/screens/view_detailed_usage/view_detailed_usage_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class UsageScreen extends StatefulWidget {
  @override
  State<UsageScreen> createState() => _UsageScreenState();
}

class _UsageScreenState extends State<UsageScreen> {
  var bloc = UsageBloc();
  Map<String, double> mylist = {
    "Total data": 7.5,
    "Data used": 2.5,
  };
  List<Color> colorlist = [
    Color(0xffD6001B),
    Colors.white,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff4F8FB),
          body: ListView(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  EnternetStatus(context),
                  const SizedBox(
                    height: 30,
                  ),
                  ChartBox(mylist: mylist, colorlist: colorlist),
                  const SizedBox(
                    height: 25,
                  ),
                  DataBox(context),
                  const SizedBox(
                    height: 25,
                  ),
                  OtherPlansBox(context),
                  const SizedBox(
                    height: 25,
                  ),
                  NewOffersBox(context),
                  const SizedBox(
                    height: 25,
                  )
                ],
              ),
            ),
          ])),
    );
  }
}

Widget EnternetStatus(BuildContext context) {
  return Material(
    elevation: 2,
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.06,
      color: Color.fromARGB(31, 34, 209, 101),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Your internet speed is",
              style: TextStyle(color: Color(0xff333333), fontSize: 18),
            ),
            Text(
              " Good ",
              style: TextStyle(color: Color(0xff22D165), fontSize: 18),
            ),
            Text(
              "now !",
              style: TextStyle(color: Color(0xff333333), fontSize: 18),
            )
          ],
        ),
      ),
    ),
  );
}

class ChartBox extends StatelessWidget {
  ChartBox({
    required this.mylist,
    required this.colorlist,
  });

  final Map<String, double> mylist;
  final List<Color> colorlist;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18),
      child: Material(
        elevation: 3,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 331,
          color: Colors.white,
          child: Stack(
            children: [
              Container(
                height: 331,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xffF7F6FB),
                      ),
                      width: 200,
                      height: 200,
                    ),
                  ],
                ),
              ),
              PieChart(
                dataMap: mylist,
                animationDuration: Duration(milliseconds: 800),
                chartRadius: MediaQuery.of(context).size.width / 3,
                colorList: colorlist,
                initialAngleInDegree: 260,
                chartType: ChartType.ring,
                ringStrokeWidth: 18,
                centerText: "75%",
                centerTextStyle:
                    const TextStyle(color: Color(0xffD6001B), fontSize: 20),
                legendOptions: const LegendOptions(
                  showLegends: false,
                ),
                chartValuesOptions: const ChartValuesOptions(
                  showChartValues: false,
                  decimalPlaces: 1,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Expanded(child: Container()),
                    const Text("Renews in 4 Hrs"),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ViewDetailedUsage()));
                      },
                      child: const Text(
                        "Tap to view detailed usage details >>",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffD6001B)),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget NewOffersBox(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, right: 16),
    child: Material(
      elevation: 3,
      child: Container(
        padding: const EdgeInsets.only(left: 12, right: 12),
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.147,
        child: Row(children: [
          Image.asset(
            "assets/images/sale_logo.png",
            scale: 0.8,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      "New Offers",
                      style: TextStyle(color: Color(0xff333333), fontSize: 14),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Only for you, avail today",
                      style: TextStyle(color: Color(0xff999999), fontSize: 11),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
                Row(
                  children: [
                    TimeWidget(
                      time: "02",
                      time2: "Hrs",
                    ),
                    TimeWidget(
                      time: "30",
                      time2: "Min",
                    ),
                    TimeWidget(
                      time: "54",
                      time2: "Sec",
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    ),
  );
}

Widget OtherPlansBox(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 16, right: 16),
    child: Material(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.only(left: 12, right: 12, top: 12),
        color: Color(0xffD6001B),
        width: MediaQuery.of(context).size.width,
        height: 142,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 335,
                    height: 120,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "LKR449",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "plan",
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.white),
                                ),
                              ],
                            ),
                            const Text(
                              "expires on 01 jan 2020",
                              style: TextStyle(
                                  color: Color.fromARGB(96, 255, 255, 255),
                                  fontSize: 12),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              color: const Color.fromARGB(31, 255, 255, 255),
                              width: 174,
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.circle,
                                        color: Colors.white,
                                        size: 8,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "10 GB data per day",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 11),
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.circle,
                                        color: Colors.white,
                                        size: 8,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "12 PM - 2 PM unlimited data",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 11),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            height: 110,
                            width: 0.5,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 110,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/sale_icon.png"),
                              Row(
                                children: const [
                                  Text(
                                    "25+ ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    " Surprising plans",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 110,
                                height: 32,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white),
                                    onPressed: () {},
                                    child: const Text(
                                      "Other plans",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(
                                          0xffD6001B,
                                        ),
                                      ),
                                    )),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ]),
      ),
    ),
  );
}

Widget DataBox(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 18, right: 16),
    child: Material(
      elevation: 3,
      child: Container(
          padding: const EdgeInsets.only(left: 18, right: 16, top: 20),
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.2,
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Thursday, Oct 31 - 5:34 PM",
                    style: TextStyle(color: Color(0xff333333), fontSize: 12),
                  ),
                  Expanded(child: Container()),
                  Image.asset("assets/images/calender.png")
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 0.5,
                color: Color.fromARGB(24, 0, 0, 0),
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
                            color: const Color(0xffD6001B), fontSize: 12),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "10 GB",
                        style: GoogleFonts.oswald(
                            color: const Color(0xffD6001B), fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    color: Color.fromARGB(61, 0, 0, 0),
                    height: 74,
                    width: 0.5,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Data used",
                        style: GoogleFonts.poppins(
                            color: const Color(0xff009DFF), fontSize: 12),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "7.5 GB",
                        style: GoogleFonts.oswald(
                            color: const Color(0xff009DFF), fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    color: Color.fromARGB(17, 0, 0, 0),
                    height: 74,
                    width: 0.7,
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Available data",
                        style: GoogleFonts.poppins(
                            color: const Color(0xff22D165), fontSize: 12),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "2.5 GB",
                        style: GoogleFonts.oswald(
                            color: const Color(0xff22D165), fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )),
    ),
  );
}

class TimeWidget extends StatelessWidget {
  String time;
  String time2;
  TimeWidget({required this.time, required this.time2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          time,
          style: const TextStyle(color: Color(0xffD6001B), fontSize: 21),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          time2,
          style: const TextStyle(color: Color(0xffD6001B), fontSize: 15),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
