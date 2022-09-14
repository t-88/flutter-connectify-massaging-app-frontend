import 'package:connectify/consts.dart';
import 'package:connectify/models/state.dart';
import 'package:flutter/material.dart';

class Pfp extends StatelessWidget {
  final letter;
  final UserState userState;
  const Pfp({required this.userState, required this.letter, super.key});

  @override
  Widget build(BuildContext context) {
    Color stateColor = Colors.white;
    if (userState == UserState.Active) {
      stateColor = AppColors.cyan;
    } else if (userState == UserState.DontTalk) {
      stateColor = AppColors.red;
    }

    return Stack(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: 8,
          width: 60,
          height: 30,
          child: Text(
            letter,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Positioned(
          bottom: 2,
          width: 60,
          height: 20,
          child: Center(
            child: Image(
              image: AssetImage("assets\\imgs\\Poly.png"),
              width: 13,
              color: stateColor,
            ),
          ),
        ),
      ],
    );
  }
}
