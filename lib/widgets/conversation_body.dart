import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/conersation_page_controller.dart';
import 'msg.dart';

class ConversationBody extends StatelessWidget {
  const ConversationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ConversationPageController>(builder: (controller) {
      return Container(
        color: Colors.black,
        child: ListView.builder(
          reverse: true,
          itemCount: controller.contact.msgs.length,
          itemBuilder: (context, index) => MsgWidget(
            msg: controller
                .contact.msgs[controller.contact.msgs.length - index - 1],
          ),
        ),
      );
    });
  }
}
