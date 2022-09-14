import 'package:connectify/models/contact.dart';
import 'package:connectify/models/msg.dart';
import 'package:connectify/models/state.dart';
import 'package:connectify/models/user.dart';
import 'package:connectify/routes/routs.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:connectify/controller/bindings.dart';
import 'package:hive_flutter/hive_flutter.dart';

bool isBoxEmpty = true;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(MsgAdapter());
  Hive.registerAdapter(ContatctAdapter());
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(UserStateAdapter());

  await Hive.close().then(
    (value) => Hive.openBox<User>('user').then(
      (value) {
        isBoxEmpty = Hive.box<User>('user').isEmpty;
      },
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Connectify',
      theme: ThemeData(fontFamily: 'Gothic'),
      debugShowCheckedModeBanner: false,
      initialBinding: MyBindings(),
      initialRoute:
          isBoxEmpty ? RoutManager.homeRout : RoutManager.contatctsRout,
      getPages: RoutManager.routes,
    );
  }
}
