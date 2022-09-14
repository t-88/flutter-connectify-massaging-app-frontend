import 'package:connectify/pages/logging_page_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:connectify/controller/loggin_page_controller.dart';
import '../consts.dart';
import '../widgets/loggin_page_header_logo.dart';
import '../widgets/input_box.dart';

class LoggingPage extends GetView<LogginPageController> {
  const LoggingPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return GetBuilder<LogginPageController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: Material(
            color: Colors.black,
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: 500,
                    child: Column(
                      children: [
                        HeaderLogo(),
                        SizedBox(height: 50),
                        InputBox(
                          label: "User Name",
                          controller: controller.userNameController,
                          onChange: (_) => controller.inputChanged(),
                        ),
                        SizedBox(height: 30),
                        InputBox(
                          label: "Password",
                          controller: controller.passwordController,
                          isPassword: true,
                          onChange: (_) => controller.inputChanged(),
                        ),
                        SizedBox(height: 30),
                        Container(
                          width: 160,
                          height: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: (controller
                                            .passwordController.text.isEmpty ||
                                        controller
                                            .userNameController.text.isEmpty)
                                    ? AppColors.purple.withOpacity(0.5)
                                    : AppColors.purple,
                              ),
                              onPressed: controller.connectToServer,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 13,
                                  ),
                                  Text(
                                    "Connect",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (controller.isLoading) LoggingPageLoadingIndicator(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
