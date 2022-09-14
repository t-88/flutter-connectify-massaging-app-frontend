import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../consts.dart';
import '../controller/conersation_page_controller.dart';

class ConversationTypingScection extends GetView<ConversationPageController> {
  const ConversationTypingScection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ConversationPageController>(builder: (controller) {
      return SafeArea(
        bottom: true,
        top: false,
        child: Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: AppColors.blackerGrey,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 80,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: TextField(
                      controller: controller.msgInputController,
                      onChanged: (value) =>
                          controller.msgInputControllerValue(),
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      cursorColor: AppColors.white,
                      cursorWidth: 3,
                      cursorHeight: 20,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                if (controller.msgInputController.text.isEmpty)
                  Positioned(
                    top: 15,
                    left: 15,
                    child: Text(
                      "Message",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white.withOpacity(0.8),
                      ),
                    ),
                  ),
                Positioned(
                  right: 0,
                  bottom: 10,
                  child: GestureDetector(
                    onTap: controller.sendMsg,
                    child: Image(
                      image: AssetImage("assets\\imgs\\send.png"),
                      width: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
