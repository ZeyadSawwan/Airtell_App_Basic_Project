import 'package:airtell_app/screens/home/home_screen.dart';
import 'package:airtell_app/screens/welcome/welocme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtomSheet {
  var bloc = WelcomeBloc();
  Future<Widget> showButtomSheetLogin(
    BuildContext context,
    WelcomeBloc bloc,
  ) async {
    return await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(new FocusNode());
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          const Text(
                            "Login",
                            style: TextStyle(
                              color: Color(0xffD6001B),
                              fontSize: 25,
                            ),
                          ),
                          const Text(
                            "Lets get started",
                            style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            controller: bloc.mobileController,
                            decoration: const InputDecoration(
                              hintText: "Mobile number",
                              hintStyle: TextStyle(
                                color: Color(0xFF999999),
                              ),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Color(0xFFF4F8FB),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          TextFormField(
                            controller: bloc.passwordController,
                            decoration: const InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Color(0xFF999999),
                              ),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Color(0xFFF4F8FB),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot password ?",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(height: 15),
                          InkWell(
                            onTap: () {
                              if (bloc.validateFieldsForLogin()) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return HomeScreen();
                                }));
                              }
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 48,
                              color: Color(0xffD6001B),
                              child: const Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom))
              ],
            ),
          );
        });
  }

  Future<Widget> showButtomSheetSignUp(
    BuildContext context,
    WelcomeBloc bloc,
  ) async {
    return await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(new FocusNode());
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.2,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 55),
                          const Text(
                            "Signup",
                            style: TextStyle(
                              color: Color(0xffD6001B),
                              fontSize: 25,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Register with  airtel account number, to start your account !",
                            style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          TextFormField(
                            controller: bloc.mobileControllerForSignup,
                            decoration: const InputDecoration(
                              hintText: "Mobile number",
                              hintStyle: TextStyle(
                                color: Color(0xFF999999),
                              ),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Color(0xFFF4F8FB),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextFormField(
                            controller: bloc.nicNumberController,
                            decoration: const InputDecoration(
                              hintText: "NIC number",
                              hintStyle: TextStyle(
                                color: Color(0xFF999999),
                              ),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Color(0xFFF4F8FB),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextFormField(
                            controller: bloc.emailController,
                            decoration: const InputDecoration(
                              hintText: "Email address",
                              hintStyle: TextStyle(
                                color: Color(0xFF999999),
                              ),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Color(0xFFF4F8FB),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextFormField(
                            controller: bloc.passwordControllerForSignup,
                            decoration: const InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Color(0xFF999999),
                              ),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Color(0xFFF4F8FB),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextFormField(
                            controller: bloc.confirmPasswordController,
                            decoration: const InputDecoration(
                              hintText: "Confirm password",
                              hintStyle: TextStyle(
                                color: Color(0xFF999999),
                              ),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Color(0xFFF4F8FB),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: CheeckBox(),
                          ),
                          const SizedBox(height: 17),
                          InkWell(
                            onTap: () {
                              if (bloc.validateFieldsForSignup() == true) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return HomeScreen();
                                }));
                              }
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 48,
                              color: Color(0xffD6001B),
                              child: const Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom))
              ],
            ),
          );
        });
  }

  Future<Widget> languages(
    BuildContext context,
    WelcomeBloc bloc,
  ) async {
    return await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(new FocusNode());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3.8,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                alignment: Alignment.center,
                                child: const Text(
                                  "Select language",
                                  style: TextStyle(
                                    color: Color(0xff333333),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              LangSheetBar()
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom))
              ],
            ),
          );
        });
  }
}

class CheeckBox extends StatefulWidget {
  @override
  State<CheeckBox> createState() => _CheeckBoxState();
}

var checkbox = true;

class _CheeckBoxState extends State<CheeckBox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        checkbox = !checkbox;
        setState(
          () {},
        );
      },
      child: Row(
        children: [
          checkbox
              ? Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  width: 16,
                  height: 16,
                )
              : Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  width: 16,
                  height: 16,
                  child: Padding(
                    padding: const EdgeInsets.all(2.2),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xff404040),
                      ),
                    ),
                  ),
                ),
          const SizedBox(
            width: 10,
          ),
          Text("Terms & conditions",
              style: GoogleFonts.poppins(
                fontSize: 12,
              )),
        ],
      ),
    );
  }
}

class LangSheetBar extends StatefulWidget {
  @override
  State<LangSheetBar> createState() => _LangSheetBarState();
}

class _LangSheetBarState extends State<LangSheetBar> {
  var bloc = WelcomeBloc();
  bool trueee = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 110,
      child: ListView.builder(
        itemCount: bloc.langlist.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 28, right: 20),
            child: Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      bloc.langlist[index].image,
                      scale: 0.9,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            bloc.selectedindex == index;
                          });
                        },
                        child: Text(
                          bloc.langlist[index].name,
                          style: TextStyle(
                              color: bloc.selectedindex == index
                                  ? Color(0xffD6001B)
                                  : Color(0xff999999)),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
