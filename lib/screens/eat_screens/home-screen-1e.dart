import 'package:flutter/material.dart';
import 'package:pepper_app/widgets/footer.dart';

class HomeScreen1e extends StatelessWidget {
  final Color headercolor;
  final Color footercolor;
  const HomeScreen1e(
      {super.key, required this.headercolor, required this.footercolor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Footer(
        color: footercolor,
      ),
      appBar: AppBar(
        backgroundColor: headercolor,
      ),
      endDrawer: const Drawer(),
    );
  }
}
