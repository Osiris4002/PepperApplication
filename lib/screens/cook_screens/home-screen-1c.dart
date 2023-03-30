import 'package:flutter/material.dart';
import 'package:pepper_app/utils/colors.dart';
import 'package:pepper_app/widgets/button.dart';
import 'package:pepper_app/widgets/footer.dart';

class HomeScreen1c extends StatelessWidget {
  final Color headercolor;
  final Color footercolor;
  const HomeScreen1c(
      {super.key, required this.headercolor, required this.footercolor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Footer(
          color: footercolor,
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: headercolor,
        ),
        endDrawer: const Drawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Image.asset('assets/icons/FC8019 (9) 1.png'),
                  Button(
                    btntext: 'Home Cheaf',
                    btncolor: headercolor,
                    fn: () {},
                    btnh: 64,
                    btnw: 300,
                    fontSize: 25,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Image.asset('assets/icons/FC8019 (7) 1.png'),
                  Button(
                    btntext: 'Street Food',
                    btncolor: Peppercolors.colour3(),
                    fn: () {},
                    btnh: 64,
                    btnw: 300,
                    fontSize: 25,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
