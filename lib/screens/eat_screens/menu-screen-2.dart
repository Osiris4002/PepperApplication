import 'package:flutter/material.dart';
import 'package:pepper_app/screens/eat_screens/order-screen.dart';
import 'package:pepper_app/utils/colors.dart';
import 'package:pepper_app/widgets/button.dart';
import 'package:pepper_app/widgets/footer.dart';

class MenuScreen2 extends StatelessWidget {
  const MenuScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Footer(
        color: Peppercolors.colour30(),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("MENU",
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 25,
                fontWeight: FontWeight.w700)),
        leading: Container(
            width: 140,
            height: 150,
            margin: const EdgeInsets.only(top: 15, left: 8),
            child: Image.asset('assets/icons/appbarlogo.png')),
        automaticallyImplyLeading: false,
        backgroundColor: Peppercolors.colour7(),
      ),
      endDrawer: const Drawer(),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 30, bottom: 10),
              height: 296,
              width: 380,
              decoration: BoxDecoration(
                color: Peppercolors.colour26(),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 15, top: 5),
                        width: 230,
                        height: 64,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Musur dal + Rajma + Rice/Roti',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Fredoka',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700)),
                            Text('60rs per/plate',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Fredoka',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700)),
                            SizedBox(
                              height: 6,
                            ),
                            Text('5 servings',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Fredoka',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(right: 15),
                          width: 44,
                          height: 44,
                          child: Image.asset('assets/icons/veglogo.png'))
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 11,
                    ),
                    height: 208,
                    width: 360,
                    child: Image.asset(
                      'assets/icons/Pixabay-2362678.png',
                      fit: BoxFit.fitWidth,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 15),
              child: Button(
                btncolor: Peppercolors.colour30(),
                btnh: 50.0,
                btntext: 'ORDER NOW!',
                btnw: 380,
                fn: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrderScreen()));
                },
                fontSize: 25,
              )),
          Container(
              margin: const EdgeInsets.only(top: 12),
              child: Button(
                btncolor: Peppercolors.colour30(),
                btnh: 36.0,
                btntext: '10 mins away form you!',
                btnw: 380,
                fn: () {},
                fontSize: 15,
              )),
          Container(
              margin: const EdgeInsets.only(top: 12),
              child: Button(
                btncolor: Peppercolors.colour30(),
                btnh: 36.0,
                btntext: 'Accepts both online and offline payment',
                btnw: 380,
                fn: () {},
                fontSize: 15,
              )),
        ],
      ),
    );
  }
}
