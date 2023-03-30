import 'package:flutter/material.dart';
import 'package:pepper_app/utils/colors.dart';

class SocialButton extends StatelessWidget {
  final String btntext;
  final Color btncolor;

  final VoidCallback fn;
  const SocialButton({
    required this.btntext,
    required this.btncolor,
    super.key,
    required this.fn,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(width: 278.0, height: 34.0),
      child: ElevatedButton(
          onPressed: fn,
          style: ElevatedButton.styleFrom(
            backgroundColor: btncolor,
            side: const BorderSide(
              width: 1.0,
              color: Colors.black,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5), // <-- Radius
            ),
          ),
          child: Text(btntext,
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  color: Peppercolors.btncolor(),
                  fontWeight: FontWeight.w400))),
    );
  }
}
