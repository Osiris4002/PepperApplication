import 'package:flutter/material.dart';
import 'package:pepper_app/screens/cook_screens/home-screen-1c.dart';
import 'package:pepper_app/screens/eat_screens/home-screen-1e.dart';
import 'package:pepper_app/utils/colors.dart';
import 'package:pepper_app/widgets/button.dart';
import 'package:pepper_app/widgets/footer.dart';
import 'package:pepper_app/widgets/social-button.dart';

class LoginScreen extends StatelessWidget {
  final Color headercolor;
  final Color footercolor;
  final Color btncolor;
  final String iconurl;
  final bool cook;
  final String titleiconurl;
  const LoginScreen(
      {super.key,
      required this.headercolor,
      required this.footercolor,
      required this.btncolor,
      required this.iconurl,
      required this.cook,
      required this.titleiconurl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Footer(
          color: footercolor,
        ),
        appBar: AppBar(
          backgroundColor: headercolor,
          leading: Image.asset(iconurl),
          centerTitle: true,
          title: const Text("Login",
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 25,
                  fontWeight: FontWeight.w700)),
        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5, left: 21, bottom: 6),
              width: 200,
              height: 230,
              child: Image.asset(
                titleiconurl,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset('assets/icons/User.png'),
                const SizedBox(width: 12),
                SizedBox(
                  width: 300,
                  height: 34,
                  child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        hintText: 'Name',
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      )),
                )
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset('assets/icons/Align Text Top.png'),
                const SizedBox(width: 12),
                SizedBox(
                  width: 300,
                  height: 34,
                  child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        hintText: '097-567-912',
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      )),
                )
              ]),
            ),
            cook
                ? Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/Protect.png'),
                          const SizedBox(width: 12),
                          SizedBox(
                            width: 300,
                            height: 34,
                            child: TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  hintText: 'Paasword',
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                )),
                          )
                        ]),
                  )
                : const SizedBox(height: 0, width: 0),
            Container(
              margin: const EdgeInsets.only(
                  left: 25, right: 20, bottom: 30, top: 25),
              child: Button(
                btntext: 'Login',
                btncolor: btncolor,
                fn: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => cook == true
                              ? HomeScreen1c(
                                  footercolor: Peppercolors.colour19(),
                                  headercolor: Peppercolors.colour19(),
                                )
                              : HomeScreen1e(
                                  footercolor: Peppercolors.colour7(),
                                  headercolor: Peppercolors.colour7(),
                                )));
                },
                btnh: 34.0,
                btnw: 327.0,
                fontSize: 25,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 10, bottom: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 138,
                      height: 0,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5)),
                    ),
                    const SizedBox(width: 12),
                    Text("OR",
                        style: TextStyle(
                            color: Peppercolors.colour7(),
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Fredoka")),
                    const SizedBox(width: 12),
                    Container(
                      width: 138,
                      height: 0,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5)),
                    ),
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset('assets/icons/R (1) 2.png'),
                const SizedBox(width: 12),
                SizedBox(
                  width: 300,
                  height: 34,
                  child: SocialButton(
                    btncolor: Colors.white,
                    btntext: 'Sign up with Google',
                    fn: () {},
                  ),
                )
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset('assets/icons/R 2.png'),
                const SizedBox(width: 17),
                SizedBox(
                  width: 300,
                  height: 34,
                  child: SocialButton(
                    btncolor: Colors.white,
                    btntext: 'Sign up with Facebook',
                    fn: () {},
                  ),
                )
              ]),
            ),
          ],
        ));
  }
}
