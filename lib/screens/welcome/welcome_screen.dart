import 'package:airtell_app/screens/usage_screen/usage_screen.dart';
import 'package:airtell_app/screens/welcome/welocme_bloc.dart';
import 'package:airtell_app/shared_widget/buttom_sheet.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  var bloc = WelcomeBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffD6041E),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),
                Image.asset("assets/images/logo.png"),
                const SizedBox(height: 100),
                const Text(
                  "Welcome",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Enjoy the worlds fastest and best network",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    ButtomSheet().showButtomSheetSignUp(context, bloc);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    ButtomSheet().showButtomSheetLogin(context, bloc);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 48,
                    color: Colors.white,
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Color(0xffD6001B),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Language",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        ButtomSheet().languages(context, bloc);
                      },
                      child: Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                            color: const Color(0xff404040).withOpacity(0.3),
                            borderRadius: BorderRadius.circular(16)),
                        child: const Center(
                          child: Text(
                            "English",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
