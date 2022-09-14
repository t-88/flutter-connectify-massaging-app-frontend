import 'package:connectify/models/msg.dart';
import 'package:connectify/models/state.dart';
import 'package:hive/hive.dart';
part 'contact.g.dart';

@HiveType(typeId: 1)
class Contatct {
  @HiveField(0)
  String userName = "user name";
  @HiveField(1)
  UserState state = UserState.Active;
  @HiveField(2)
  List<Msg> unReadMsgs = [];
  @HiveField(3)
  List<Msg> msgs = [];

  Contatct(
      {this.userName = "", required this.msgs, this.state = UserState.Active});
}
