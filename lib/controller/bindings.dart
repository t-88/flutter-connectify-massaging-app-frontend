import 'package:connectify/controller/conersation_page_controller.dart';
import 'package:connectify/controller/contacts_page_controller.dart';
import 'package:connectify/controller/loggin_page_controller.dart';
import 'package:connectify/controller/search_page_controller.dart';
import 'package:connectify/controller/user_setting_menu_popup_controller.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class MyBindings implements Bindings {
  void dependencies() {
    Get.lazyPut(() => LogginPageController());
    Get.lazyPut(() => ContactsPageController());
    Get.lazyPut(() => UserSettingMenuPopUpController());
    Get.lazyPut(() => ConversationPageController());
    Get.lazyPut(() => SearchPageController());
  }
}
