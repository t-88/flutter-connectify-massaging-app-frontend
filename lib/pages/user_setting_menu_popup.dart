import 'package:connectify/consts.dart';
import 'package:connectify/controller/user_setting_menu_popup_controller.dart';
import 'package:connectify/models/state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../models/user.dart';
import '../widgets/overlay.dart';
import '../widgets/user_setting_menu.dart';

class UserSettingMenuPopUp extends GetView<UserSettingMenuPopUpController> {
  const UserSettingMenuPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    var userState = controller.user.state;
    var stateColor = Colors.white;
    if (userState == UserState.Active) {
      stateColor = AppColors.cyan;
    } else if (userState == UserState.DontTalk) {
      stateColor = AppColors.red;
    }

    return Stack(
      children: [
        MyOverlay(callback: () => controller.toggleShowPopUp(false)),
        Positioned(
          left: (MediaQuery.of(context).size.width - 290) / 2,
          top: (MediaQuery.of(context).size.height - 340) / 2,
          child: UserSettingMenu(),
        ),
        Positioned(
          top: (MediaQuery.of(context).size.height - 340) / 2 - 30,
          left: (MediaQuery.of(context).size.width - 290) / 2 + (290 - 60) / 2,
          child: Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 3,
                    ),
                  ],
                  border: Border.all(
                    width: 3,
                    color: Colors.white,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      width: 55,
                      height: 55,
                      child: Center(
                        child: Text(
                          (Hive.box<User>("user").getAt(0) as User)
                              .userName[0]
                              .toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 33,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 4,
                      left: (55 - 12) / 2,
                      child: Center(
                        child: Image(
                          image: AssetImage("assets\\imgs\\Poly.png"),
                          width: 12,
                          color: stateColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
