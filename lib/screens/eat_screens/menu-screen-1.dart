import 'package:flutter/material.dart';
import 'package:pepper_app/screens/eat_screens/menu-screen-2.dart';
import 'package:pepper_app/utils/colors.dart';
import 'package:pepper_app/widgets/button.dart';
import 'package:pepper_app/widgets/footer.dart';

class MenuScreen1 extends StatelessWidget {
  const MenuScreen1({super.key});

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
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(
                  left: 25, right: 25, top: 26, bottom: 5),
              width: 335,
              height: 50,
              color: Colors.grey[200],
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon:
                      const ImageIcon(AssetImage("assets/icons/Slider.png")),
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFF595656), width: 0.5),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  suffixIcon: const Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height -
                  kToolbarHeight -
                  kBottomNavigationBarHeight -
                  150,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 12),
                      width: 367,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Peppercolors.colour26(),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
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
                              child: index % 2 == 0
                                  ? Image.asset('assets/icons/veglogo.png')
                                  : index == 3 || index == 7 || index==9
                                      ? Image.asset('assets/icons/medlogo.jpg')
                                      : Image.asset(
                                          'assets/icons/nonveglogo.png'))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12, left: 20, right: 20),
              child: Button(
                btncolor: Peppercolors.colour30(),
                btnh: 43,
                btntext: 'Next Page',
                fn: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MenuScreen2()));
                },
                fontSize: 25,
                btnw: 333,
              ),
            ),
          ],
        ));
  }
}
