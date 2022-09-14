import 'package:connectify/controller/conersation_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../consts.dart';
import '../models/state.dart';

class ConversationAppBar extends GetView<ConversationPageController> {
  final contact;
  const ConversationAppBar({required this.contact, super.key});

  @override
  Widget build(BuildContext context) {
    var stateColor = AppColors.white;
    if (contact.state == UserState.DontTalk) {
      stateColor = AppColors.red;
    } else if (contact.state == UserState.Active) {
      stateColor = AppColors.cyan;
    }

    final pfpLetter = contact.userName[0];
    final pfpLetterStyle = TextStyle(
      color: Colors.white,
      fontSize: 28,
      fontWeight: FontWeight.w700,
    );
    final pfpLetterSize = AppUtiles.getStringSize(pfpLetter, pfpLetterStyle);

    return Container(
      width: double.infinity,
      height: 100,
      padding: EdgeInsets.only(top: 35, left: 10),
      decoration: BoxDecoration(
        color: AppColors.blackerGrey,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: AppColors.white.withOpacity(0.2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          GestureDetector(
            onTap: controller.backToContactPage,
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 28,
            ),
          ),
          SizedBox(width: 50),
          Row(
            children: [
              Container(
                width: 45,
                height: 45,
                padding: EdgeInsets.only(top: (40 - pfpLetterSize.height) / 2),
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2,
                    color: stateColor,
                  ),
                ),
                child: Center(
                  child: Text(
                    pfpLetter,
                    style: pfpLetterStyle,
                  ),
                ),
              ),
              SizedBox(width: 15),
              Transform.translate(
                offset: Offset(0, 2),
                child: Text(
                  contact.userName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
