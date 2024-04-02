import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/aramco_logo.png",
      width: 508,
      height: 274,
    );
  }
}
