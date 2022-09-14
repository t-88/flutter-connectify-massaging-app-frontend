import 'package:connectify/consts.dart';
import 'package:connectify/controller/contacts_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/contact_element.dart';

class ContractsHalfPage extends GetView<ContactsPageController> {
  const ContractsHalfPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Contacts:",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...controller.contacts.map(
                      (contact) {
                        return GestureDetector(
                          onTap: () => controller.onContactSelected(contact),
                          child: ContactElement(contact: contact),
                        );
                      },
                    ).toList()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
