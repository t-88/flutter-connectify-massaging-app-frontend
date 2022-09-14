import 'package:connectify/models/state.dart';
import 'package:connectify/pages/logging_page.dart';
import 'package:connectify/routes/routs.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../models/user.dart';

class UserSettingMenuPopUpController extends GetxController {
  bool showPopUp = false;
  late User user;

  void registerUser(tempUser) {
    user = tempUser;
    update();
  }

  void toggleShowPopUp(state) {
    showPopUp = state;
    registerUser(Hive.box<User>('user').getAt(0));
    update();
  }

  void onChangeState() {
    var states = [UserState.Active, UserState.UnActive, UserState.DontTalk];
    user.state = states[(user.state.index + 1) % states.length];
    Hive.box<User>('user').put(0, user);
    update();
  }

  void onDeleteAccount() async {
    await Hive.box<User>('user').deleteAt(0);
    Get.to(LoggingPage());
    toggleShowPopUp(false);
  }
}
