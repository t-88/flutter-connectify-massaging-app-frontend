import 'package:connectify/controller/user_setting_menu_popup_controller.dart';
import 'package:connectify/widgets/borderedBtn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../consts.dart';
import '../models/user.dart';

class UserSettingMenu extends StatelessWidget {
  const UserSettingMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      // height: 320,
      padding: EdgeInsets.fromLTRB(40, 35, 30, 40),
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            "Hi, :{)",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "OCR-A",
                fontSize: 18,
                wordSpacing: -10,
                letterSpacing: 4,
                shadows: [
                  Shadow(
                    blurRadius: 5,
                    color: Colors.black.withOpacity(0.2),
                  )
                ]),
          ),
          SizedBox(height: 20),
          GetBuilder<UserSettingMenuPopUpController>(
            builder: (controller) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BorderedBtn(
                  txt: "Change state",
                  callback: controller.onChangeState,
                ),
                SizedBox(height: 20),
                BorderedBtn(
                  txt: "Delete account ",
                  callback: controller.onDeleteAccount,
                  color: AppColors.red,
                  txtStyle: TextStyle(
                    color: AppColors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
