import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Box extends StatelessWidget {
  Color borderColor;
  Color boxColor;

  String image;
  String name;
  String percentage;
  Color percentageColor;
  double number;
  Color numberColor;

  Box(
      {required this.borderColor,
      required this.boxColor,
      required this.image,
      required this.name,
      required this.percentage,
      required this.percentageColor,
      required this.number,
      required this.numberColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 120,
      decoration: BoxDecoration(
        color: boxColor,
        border: Border.all(color: borderColor),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            const SizedBox(
              height: 6,
            ),
            Text(
              name,
              style:
                  GoogleFonts.poppins(color: Color(0xff666666), fontSize: 12),
            ),
            Row(
              children: [
                Text(
                  number.toString(),
                  style: GoogleFonts.poppins(color: numberColor, fontSize: 21),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  percentage,
                  style:
                      GoogleFonts.oswald(color: percentageColor, fontSize: 14),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
