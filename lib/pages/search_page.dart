import 'dart:math';

import 'package:connectify/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controller/search_page_controller.dart';

class SearchPage extends GetView<SearchPageController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    return GetBuilder<SearchPageController>(builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.only(top: 35, left: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: controller.onBackBtnClicked,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      height: 50,
                      padding: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        color: AppColors.blackerGrey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: controller.searchInputController,
                        onChanged: (_) => controller.updateInput(),
                        autofocus: true,
                        cursorColor: AppColors.white,
                        cursorHeight: 25,
                        cursorWidth: 3,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          fillColor: Colors.red,
                          border: InputBorder.none,
                          suffixIcon: GestureDetector(
                            onTap: controller.clearSearch,
                            child: Icon(
                              Icons.cancel_sharp,
                              color:
                                  controller.searchInputController.text.isEmpty
                                      ? AppColors.white.withOpacity(0.5)
                                      : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20)
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image:
                        AssetImage("assets\\imgs\\undraw_the_search_s0xf.png"),
                    width: Get.width * 0.6,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Find Contacts",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: max(Get.width * 0.07, 20),
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
