import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String btntext;
  final Color btncolor;
  final double btnh;
  final double btnw;
  final VoidCallback fn;
  final double fontSize;
  const Button(
      {required this.btntext,
      required this.btncolor,
      super.key,
      required this.fn,
      required this.btnh,
      required this.btnw,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: btnw, height: btnh),
      child: ElevatedButton(
          onPressed: fn,
          style: ElevatedButton.styleFrom(
            backgroundColor: btncolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // <-- Radius
            ),
          ),
          child: Text(btntext,
              style: TextStyle(
                  fontSize: fontSize,
                  fontFamily: 'Fredoka',
                  fontWeight: FontWeight.w700))),
    );
  }
}
