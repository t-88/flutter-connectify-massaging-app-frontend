import 'package:connectify/consts.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final onAccountSetting;
  final onSearch;

  const Header({
    required this.onAccountSetting,
    required this.onSearch,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: onAccountSetting,
          child: Icon(
            Icons.settings,
            color: AppColors.white,
            size: 25,
          ),
        ),
        Image(
          image: AssetImage("assets\\imgs\\Logo.png"),
          width: 200,
        ),
        GestureDetector(
          onTap: onSearch,
          child: Icon(
            Icons.search,
            color: AppColors.white,
            size: 25,
          ),
        ),
      ],
    );
  }
}
