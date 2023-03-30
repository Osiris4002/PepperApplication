import 'package:flutter/material.dart';
import 'package:pepper_app/utils/colors.dart';
import 'package:pepper_app/widgets/button.dart';
import 'package:pepper_app/widgets/footer.dart';

class PlaceOrderScreen extends StatelessWidget {
  const PlaceOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Footer(
        color: Peppercolors.colour18(),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("PLACE ORDER",
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 25,
                fontWeight: FontWeight.w700)),
        leading: Image.asset('assets/icons/Go Back.png'),
        automaticallyImplyLeading: false,
        backgroundColor: Peppercolors.colour18(),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 40),
              width: 350,
              height: 230,
              child: Image.asset(
                'assets/icons/placeorder.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25, right: 20, top: 30),
            child: Button(
              btncolor: Peppercolors.colour8(),
              btnh: 95.0,
              btntext: 'GO FOR PICK-UP',
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
