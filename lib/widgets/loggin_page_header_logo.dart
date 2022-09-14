import 'package:flutter/material.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("assets\\imgs\\Header.png"),
      width: 300,
    );
  }
}
