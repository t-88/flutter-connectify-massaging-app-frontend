import 'package:connectify/models/user.dart';
import 'package:connectify/pages/contacts_page.dart';
import 'package:connectify/routes/routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class LogginPageController extends GetxController {
  final userNameController = new TextEditingController();
  final passwordController = new TextEditingController();

  bool isLoading = false;

  void inputChanged() {
    update();
  }

  void connectToServer() async {
    if (!userNameController.text.isEmpty && !passwordController.text.isEmpty) {
      isLoading = true;
      sendRequestToServer();
      update();
    }
  }

  Future<void> sendRequestToServer() async {
    await Future.delayed(Duration(seconds: 2));
    isLoading = false;

    User user = User(msgs: [], contacts: [])
      ..userName = userNameController.text;

    await Hive.box<User>('user').add(user);

    userNameController.clear();
    passwordController.clear();

    Get.to(ContactsPage());
    update();
  }

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
