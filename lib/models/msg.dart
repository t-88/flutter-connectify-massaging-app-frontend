import 'package:hive/hive.dart';
part 'msg.g.dart';

@HiveType(typeId: 0)
class Msg {
  @HiveField(0)
  String txt = "";
  @HiveField(1)
  String time = "";
  @HiveField(2)
  bool isUser = false;
  @HiveField(3)
  bool isRead = false;

  Msg({
    required this.txt,
    required this.time,
    required this.isUser,
    this.isRead = false,
  });
}
