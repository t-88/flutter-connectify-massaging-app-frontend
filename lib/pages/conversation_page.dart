import 'package:connectify/controller/conersation_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../widgets/conversation_app_bar.dart';
import '../widgets/conversation_body.dart';
import '../widgets/conversation_typing_scection.dart';

class ConversationPage extends GetView<ConversationPageController> {
  const ConversationPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            ConversationAppBar(
              contact: controller.contact,
            ),
            Expanded(
              child: ConversationBody(),
            ),
            ConversationTypingScection(),
          ],
        ),
      ),
    );
  }
}
