import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final Color color;
  const Footer({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29,
      color: color,
    );
  }
}
