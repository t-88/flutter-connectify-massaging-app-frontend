import 'package:connectify/models/contact.dart';
import 'package:connectify/routes/routs.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../models/msg.dart';
import '../place_holder.dart';

class ConversationPageController extends GetxController {
  var msgInputController = TextEditingController();
  var contact;

  void msgInputControllerValue() {
    update();
  }

  void setContact(Contatct currContact) {
    contact = currContact;
    update();
  }

  void backToContactPage() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    Get.back();
  }

  void sendMsg() {
    contact.msgs.add(
      Msg(
        txt: msgInputController.text,
        isRead: true,
        time: "6:00 am",
        isUser: true,
      ),
    );
    msgInputController.text = "";
    update();
  }

  @override
  void dispose() {
    msgInputController.dispose();
    super.dispose();
  }
}
