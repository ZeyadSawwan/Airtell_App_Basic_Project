import 'package:airtell_app/models/lang.dart';
import 'package:flutter/material.dart';

class WelcomeBloc {
  int selectedindex = 0;

  List<LangModel> langlist = [
    LangModel(image: "assets/icons/lang1_icon.png", name: "English"),
    LangModel(image: "assets/icons/lang2_icon.png", name: "සිංහල"),
    LangModel(image: "assets/icons/lang3_icon.png", name: "தமிழ்")
  ];
  TextEditingController passwordControllerForSignup = TextEditingController();
  TextEditingController mobileControllerForSignup = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nicNumberController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool validateFieldsForSignup() {
    if (mobileControllerForSignup.text.isEmpty ||
        passwordControllerForSignup.text.isEmpty ||
        emailController.text.isEmpty ||
        nicNumberController.text.isEmpty ||
        confirmPasswordController.text.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  bool validateFieldsForLogin() {
    if (mobileController.text.isEmpty || passwordController.text.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
}
