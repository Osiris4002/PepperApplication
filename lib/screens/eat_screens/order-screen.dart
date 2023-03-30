import 'package:flutter/material.dart';
import 'package:pepper_app/screens/eat_screens/placeorder-screen.dart';
import 'package:pepper_app/utils/colors.dart';
import 'package:pepper_app/widgets/button.dart';
import 'package:pepper_app/widgets/footer.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Footer(
        color: Peppercolors.colour30(),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ORDER",
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 25,
                fontWeight: FontWeight.w700)),
        leading: Image.asset('assets/icons/Go Back.png'),
        automaticallyImplyLeading: false,
        backgroundColor: Peppercolors.colour7(),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              width: 292.73,
              height: 236,
              child: Image.asset('assets/icons/orderlogo.png'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15, bottom: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset('assets/icons/User.png'),
              const SizedBox(width: 12),
              SizedBox(
                width: 320,
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
            margin: const EdgeInsets.only(bottom: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset('assets/icons/Phone Squared.png'),
              const SizedBox(width: 12),
              SizedBox(
                width: 320,
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
          Container(
            margin: const EdgeInsets.only(left: 25, right: 20, top: 15),
            child: Button(
              btncolor: Peppercolors.colour30(),
              btnh: 36.0,
              btntext: 'YOU WILL COME TO TAKE ORDER IN',
              btnw: 370,
              fn: () {},
              fontSize: 15,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30, top: 30),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset('assets/icons/Alarm Clock.png'),
              const SizedBox(width: 12),
              SizedBox(
                width: 320,
                height: 34,
                child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.arrow_drop_down),
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
            margin: const EdgeInsets.only(left: 25, right: 20),
            child: Button(
              btncolor: Peppercolors.colour30(),
              btnh: 50.0,
              btntext: 'PLACE ORDER',
              btnw: 370,
              fn: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PlaceOrderScreen()));
              },
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
