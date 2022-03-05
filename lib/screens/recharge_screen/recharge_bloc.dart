import 'package:airtell_app/models/buy_details.dart';
import 'package:airtell_app/models/months.dart';
import 'package:airtell_app/models/plan.dart';

class RechargeBloc {
  int selectedindex = 0;
  int selectedindex2 = 0;

  List<Plan> popularPlan = [
    Plan(
      name: "LKR449",
      speed: 10,
      validationDays: 73,
    ),
    Plan(
      name: "Marwan",
      speed: 100,
      validationDays: 5,
    ),
    Plan(
      name: "Raya",
      speed: 120,
      validationDays: 19,
    ),
    Plan(
      name: "Majd",
      speed: 200,
      validationDays: 91,
    ),
    Plan(
      name: "naser",
      speed: 99,
      validationDays: 3,
    ),
  ];

  List<Months> listOfMonths = [
    Months(month: 1),
    Months(month: 3),
    Months(month: 6),
    Months(month: 12),
    Months(month: 24),
  ];
  List<BuyDetails> buyDetailsList = [
    BuyDetails(speedByMbs: 6, mbs: "Mb/s", buyNow: "buy now >>"),
    BuyDetails(speedByMbs: 10, mbs: "Mb/s", buyNow: "buy now >>"),
    BuyDetails(speedByMbs: 10, mbs: "Mb/s", buyNow: "buy now >>"),
    BuyDetails(speedByMbs: 22, mbs: "Mb/s", buyNow: "buy now >>"),
    BuyDetails(speedByMbs: 14, mbs: "Mb/s", buyNow: "buy now >>"),
  ];
}
