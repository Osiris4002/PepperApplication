import 'package:flutter/material.dart';
import 'package:pepper_app/utils/colors.dart';
import 'package:pepper_app/widgets/button.dart';
import 'package:pepper_app/widgets/footer.dart';

class RegisterScreen extends StatefulWidget {
  final Color headercolor;
  final Color footercolor;
  final Color btncolor;
  final String iconurl;
  final bool cook;

  const RegisterScreen(
      {super.key,
      required this.headercolor,
      required this.footercolor,
      required this.btncolor,
      required this.iconurl,
      required this.cook});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _checkval = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Footer(
        color: widget.footercolor,
      ),
      appBar: AppBar(
        backgroundColor: widget.headercolor,
        leading: Image.asset(widget.iconurl),
        centerTitle: true,
        title: const Text("Registration",
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 25,
                fontWeight: FontWeight.w700)),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
                margin: const EdgeInsets.only(top: 20),
                width: 330,
                height: 40,
                child: widget.cook
                    ? Column(
                        children: [
                          Text('Complete the registration process to sell your',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Peppercolors.colour3())),
                          Text('delicious home made food to customers',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Peppercolors.colour3())),
                        ],
                      )
                    : Column(
                        children: [
                          Text(
                            'Complete the registration process to order ',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Peppercolors.colour30()),
                          ),
                          Text('your delicious home made food',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Peppercolors.colour30())),
                        ],
                      )),
          ),
          widget.cook
              ? Container(
                  margin:
                      const EdgeInsets.only(left: 247, right: 22, bottom: 13),
                  width: 94,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      border: Border.all(width: 1.0)),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/Upload to Cloud.png')),
                )
              : Container(
                  height: 0,
                  width: 0,
                ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
          widget.cook
              ? Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/icons/Phone Squared.png'),
                            const SizedBox(width: 12),
                            SizedBox(
                              width: 143,
                              height: 34,
                              child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    hintText: 'Phone Number',
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  )),
                            ),
                            const SizedBox(width: 15),
                            Image.asset('assets/icons/Protect.png'),
                            const SizedBox(width: 12),
                            SizedBox(
                              width: 90,
                              height: 34,
                              child: TextField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    hintText: 'Password',
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  )),
                            )
                          ]),
                    ],
                  ),
                )
              : Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/Phone Squared.png'),
                        const SizedBox(width: 12),
                        SizedBox(
                          width: 300,
                          height: 34,
                          child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                hintText: 'Phone Number',
                                enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.black, width: 1),
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
              Image.asset('assets/icons/Circled Envelope.png'),
              const SizedBox(width: 12),
              SizedBox(
                width: 300,
                height: 34,
                child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      hintText: 'Email',
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
          widget.cook
              ? Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/Home Page.png'),
                        const SizedBox(width: 12),
                        SizedBox(
                          width: 300,
                          height: 34,
                          child: TextField(
                              maxLines: 6,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10),
                                hintText: 'Address',
                                enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.black, width: 1),
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
              : Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/Home Page.png'),
                        const SizedBox(width: 12),
                        SizedBox(
                          width: 300,
                          height: 94,
                          child: TextField(
                              maxLines: 6,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 40.0, horizontal: 10),
                                hintText: 'Address',
                                enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.black, width: 1),
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
          widget.cook
              ? Container(
                  margin: const EdgeInsets.only(bottom: 20, left: 52),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 300,
                          height: 34,
                          child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10),
                                hintText: 'Adhar',
                                enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.black, width: 1),
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
              : Container(
                  width: 0,
                  height: 0,
                ),
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/icons/Gender Equality.png'),
                      const SizedBox(width: 12),
                      SizedBox(
                        width: 110,
                        height: 34,
                        child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              hintText: 'Gender',
                              enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1),
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
                const SizedBox(
                  width: 15,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset('assets/icons/Thursday.png'),
                  const SizedBox(width: 12),
                  SizedBox(
                    width: 130,
                    height: 34,
                    child: TextField(
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          hintText: 'DOB',
                          enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
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
              ],
            ),
          ),
          SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: _checkval,
                    activeColor: widget.headercolor,
                    onChanged: (value) {
                      setState(() {
                        _checkval = value!;
                      });
                    },
                  ),
                  const SizedBox(
                      height: 22,
                      width: 230,
                      child: Text(
                        "I have read and agree / agreed with the terms and conditions",
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500),
                      ))
                ],
              )),
          Container(
              width: 300,
              height: 65,
              margin: const EdgeInsets.only(top: 14, left: 35, right: 35),
              child: Button(
                btncolor: widget.btncolor,
                btntext: 'Submit',
                fn: () {},
                btnh: 65.0,
                btnw: 300.0,
                fontSize: 25,
              ))
        ],
      ),
    );
  }
}
