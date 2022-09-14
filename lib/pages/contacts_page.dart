import 'package:connectify/controller/user_setting_menu_popup_controller.dart';
import 'package:connectify/pages/user_setting_menu_popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:connectify/consts.dart';
import '../widgets/contacts_page_header.dart';
import 'package:connectify/controller/contacts_page_controller.dart';
import 'package:connectify/pages/no_contacts_half_page.dart';

import 'contatcts_half_page.dart';

class ContactsPage extends GetView<ContactsPageController> {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.black,
        child: Stack(
          children: [
            Column(
              children: [
                Header(
                  onAccountSetting: controller.onAccountSetting,
                  onSearch: controller.onSearch,
                ),
                Divider(
                  color: AppColors.white,
                  endIndent: 70,
                  indent: 70,
                  height: 80,
                ),
                controller.contacts.length == 0
                    ? NoContactsHalfPage(onSearch: controller.onSearch)
                    : ContractsHalfPage(),
              ],
            ),
            GetBuilder<UserSettingMenuPopUpController>(
              builder: (controller) =>
                  controller.showPopUp ? UserSettingMenuPopUp() : SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}
