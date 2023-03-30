import 'package:flutter/material.dart';
import 'package:pepper_app/screens/login-screen.dart';
import 'package:pepper_app/screens/register-screen.dart';
import 'package:pepper_app/utils/colors.dart';
import 'package:pepper_app/widgets/button.dart';
import 'package:pepper_app/widgets/footer.dart';

class LandingScreen2 extends StatelessWidget {
  final Color footercolor;
  final Color btn1color;
  final Color btn2color;
  final String titleurl;
  final String iconurl;

  final bool cook;

  const LandingScreen2(
      {super.key,
      required this.footercolor,
      required this.btn1color,
      required this.btn2color,
      required this.iconurl,
      required this.titleurl,
      required this.cook});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Footer(color: footercolor),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(
                top: 130,
              ),
              child: Center(child: Image.asset(titleurl))),
          Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              width: 230,
              height: 230,
              child: Center(child: Image.asset(iconurl))),
          Container(
              margin: const EdgeInsets.only(bottom: 21),
              child: Center(
                  child: Button(
                btntext: 'Register',
                btncolor: btn1color,
                fn: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => cook == false
                              ? RegisterScreen(
                                  btncolor: Peppercolors.colour7(),
                                  footercolor: Peppercolors.colour30(),
                                  headercolor: Peppercolors.colour7(),
                                  iconurl: "assets/icons/Go Back.png",
                                  cook: cook)
                              : RegisterScreen(
                                  btncolor: Peppercolors.colour9(),
                                  footercolor: Peppercolors.colour19(),
                                  headercolor: Peppercolors.colour3(),
                                  iconurl: 'assets/icons/Go Back (1).png',
                                  cook: cook)));
                },
                btnh: 65.0,
                btnw: 300.0,
                fontSize: 25,
              ))),
          Center(
              child: Button(
            btnh: 65.0,
            btnw: 300.0,
            btntext: 'Login',
            btncolor: btn2color,
            fn: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => cook == false
                          ? LoginScreen(
                              btncolor: Peppercolors.colour30(),
                              footercolor: Peppercolors.colour30(),
                              headercolor: Peppercolors.colour7(),
                              iconurl: "assets/icons/Go Back.png",
                              cook: cook,
                              titleiconurl: 'assets/icons/eat_login.png',
                            )
                          : LoginScreen(
                              btncolor: Peppercolors.colour9(),
                              footercolor: Peppercolors.colour9(),
                              headercolor: Peppercolors.colour3(),
                              iconurl: 'assets/icons/Go Back (1).png',
                              cook: cook,
                              titleiconurl: 'assets/icons/cook_login.png',
                            )));
            },
            fontSize: 25,
          )),
        ],
      ),
    );
  }
}
