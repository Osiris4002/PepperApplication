import 'package:flutter/material.dart';
import 'package:pepper_app/screens/landing-screen-2.dart';
import 'package:pepper_app/utils/colors.dart';
import 'package:pepper_app/widgets/button.dart';
import 'package:pepper_app/widgets/footer.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Footer(
        color: Peppercolors.colour8(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            child: Center(child: Image.asset('assets/icons/FC8019 (1) 1.png')),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 38),
            child: Center(child: Image.asset('assets/icons/Inter.png')),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 24),
            child: Center(
              child: Button(
                btntext: "WANT TO COOK",
                btncolor: Peppercolors.colour2(),
                fn: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LandingScreen2(
                                footercolor: Peppercolors.colour19(),
                                btn1color: Peppercolors.colour9(),
                                btn2color: Peppercolors.colour11(),
                                iconurl: "assets/icons/eatlogo.png",
                                titleurl: "assets/icons/wanttoeatlogo.png",
                                cook: true,
                              )));
                },
                btnh: 65.0,
                btnw: 300.0,
                fontSize: 25,
              ),
            ),
          ),
          Center(
            child: Button(
              btnh: 65.0,
              btnw: 300.0,
              btntext: "WANT TO EAT",
              btncolor: Peppercolors.colour8(),
              fn: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LandingScreen2(
                              footercolor: Peppercolors.colour17(),
                              btn1color: Peppercolors.colour7(),
                              btn2color: Peppercolors.colour30(),
                              iconurl: "assets/icons/FC8019 (2) 1.png",
                              titleurl: "assets/icons/wanttocooklogo.png",
                              cook: false,
                            )));
              },
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
