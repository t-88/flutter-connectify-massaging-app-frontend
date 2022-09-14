import 'package:connectify/models/contact.dart';
import 'package:connectify/models/state.dart';
import 'package:hive/hive.dart';

import 'msg.dart';
part 'user.g.dart';

@HiveType(typeId: 2)
class User extends Contatct {
  @HiveField(4)
  List<Contatct> contacts = [];

  User({required super.msgs, required this.contacts});
}
