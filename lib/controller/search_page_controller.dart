import 'package:connectify/routes/routs.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SearchPageController extends GetxController {
  var searchInputController = TextEditingController();

  void updateInput() {
    update();
  }

  void clearSearch() {
    searchInputController.clear();
  }

  void onBackBtnClicked() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    Get.toNamed(RoutManager.contatctsRout);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    searchInputController.dispose();
    super.dispose();
  }
}
