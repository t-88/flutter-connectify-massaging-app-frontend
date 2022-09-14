import 'package:connectify/controller/conersation_page_controller.dart';
import 'package:connectify/controller/user_setting_menu_popup_controller.dart';
import 'package:connectify/place_holder.dart';
import 'package:connectify/routes/routs.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../models/contact.dart';

class ContactsPageController extends GetxController {
  final userId = "";

  var user;
  List<Contatct> contacts = [...placeholder_contacts];

  void onAccountSetting() {
    Get.find<UserSettingMenuPopUpController>().toggleShowPopUp(true);
  }

  void onContactSelected(contact) {
    Get.find<ConversationPageController>().setContact(contact);
    Get.toNamed(RoutManager.conversationRout);
  }

  void onSearch() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    Get.toNamed(RoutManager.searchRout);
  }
}
