import 'package:airtell_app/screens/home/home_bloc.dart';
import 'package:airtell_app/screens/usage_screen/usage_bloc.dart';
import 'recharge_bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RechargeScreen extends StatefulWidget {
  State<RechargeScreen> createState() => _RechargeScreenState();
}

class _RechargeScreenState extends State<RechargeScreen> {
  @override
  var bloc = RechargeBloc();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14, top: 8),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: const Text(
                "Popular plans",
                style: TextStyle(color: Color(0xff333333)),
              ),
            ),
          ),
          SizedBox(
            height: 120,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: bloc.popularPlan.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (cntx, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 5, top: 8, bottom: 8),
                  child: Material(
                    elevation: 2,
                    child: Container(
                      color: Colors.white,
                      width: 155,
                      height: 120,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8, top: 16),
                            child: Row(
                              children: [
                                Text(
                                  bloc.popularPlan[index].speed
                                      .toStringAsFixed(0),
                                  style: const TextStyle(
                                      color: Color(0xff009DFF), fontSize: 20),
                                ),
                                const Text(
                                  " GB" + " ",
                                  style: TextStyle(
                                      color: Color(0xff009DFF), fontSize: 20),
                                ),
                                const Text(
                                  "per day",
                                  style: TextStyle(
                                      color: Color(0xff009DFF), fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 12.0, right: 8, top: 4),
                            child: Row(
                              children: [
                                Text(
                                  bloc.popularPlan[index].name,
                                  style: const TextStyle(fontSize: 14),
                                ),
                                Text(
                                  "  Validty: ${bloc.popularPlan[index].validationDays} days",
                                  style: const TextStyle(
                                      color: Color(0xff999999), fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Container(
                              height: 0.5,
                              color: Color.fromARGB(24, 0, 0, 0),
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            height: 20,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.white,
                            child: InkWell(
                              onTap: () {
                                //TODO
                              },
                              child: Row(
                                children: [
                                  Expanded(child: Container()),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 4),
                                    child: InkWell(
                                      onTap: () {},
                                      child: const Text(
                                        "view detail >>",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          NewOffersBox(context),
          const SizedBox(
            height: 20,
          ),
          OptionsToBuy(),
        ],
      ),
    );
  }
}

class OptionsToBuy extends StatefulWidget {
  @override
  State<OptionsToBuy> createState() => _OptionsToBuyState();
}

class _OptionsToBuyState extends State<OptionsToBuy> {
  var bloc = RechargeBloc();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.32,
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      const Padding(padding: EdgeInsets.all(8)),
                  itemCount: bloc.listOfMonths.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 16, top: 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              bloc.selectedindex2 = index;
                            });
                          },
                          child: Text(
                            "month" +
                                "  " +
                                bloc.listOfMonths[index].month.toString(),
                            style: GoogleFonts.poppins(
                                color: bloc.selectedindex2 == index
                                    ? Colors.red
                                    : Colors.black,
                                fontSize: 12),
                          ),
                        ),
                      )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => Padding(
                        padding:
                            const EdgeInsets.only(left: 18, right: 18, top: 10),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: const Color(0xffF7F6FB),
                              ),
                              padding: const EdgeInsets.all(8),
                              width: 48,
                              height: 48,
                              child: Column(children: [
                                Text(
                                  bloc.buyDetailsList[index].speedByMbs
                                      .toString(),
                                  style:
                                      const TextStyle(color: Color(0xff1892DE)),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  bloc.buyDetailsList[index].mbs,
                                  style: const TextStyle(
                                      color: Color(0xff1892DE), fontSize: 10),
                                )
                              ]),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      bloc.popularPlan[index].speed
                                          .toStringAsFixed(0),
                                      style: const TextStyle(
                                          color: Color(0xff666666),
                                          fontSize: 14),
                                    ),
                                    const Text(
                                      " GB" + " ",
                                      style: TextStyle(
                                          color: Color(0xff666666),
                                          fontSize: 14),
                                    ),
                                    const Text(
                                      "per day",
                                      style: TextStyle(
                                          color: Color(0xff666666),
                                          fontSize: 10),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Text(
                                    bloc.popularPlan[index].name,
                                    style: const TextStyle(
                                        color: Color(0xff666666)),
                                  ),
                                )
                              ],
                            ),
                            Expanded(child: Container()),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                bloc.buyDetailsList[index].buyNow,
                                style: const TextStyle(
                                    color: Color(0xff333333), fontSize: 11),
                              ),
                            )
                          ],
                        ),
                      )),
            ),
          ],
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
