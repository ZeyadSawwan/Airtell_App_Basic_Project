import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Boxes extends StatelessWidget {
  String image;
  String name;
  VoidCallback? onclick;

  Boxes({required this.image, required this.name, required this.onclick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Material(
        elevation: 2,
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Image.asset(image),
                const SizedBox(
                  width: 14,
                ),
                Text(
                  name,
                  style: GoogleFonts.poppins(color: const Color(0xff666666)),
                ),
                Expanded(child: Container()),
                IconButton(
                  onPressed: onclick,
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Color(0xff707070),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
