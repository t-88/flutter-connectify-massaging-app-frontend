import 'package:hive/hive.dart';

part "state.g.dart";

@HiveType(typeId: 3)
enum UserState {
  @HiveField(0)
  Active,
  @HiveField(1)
  UnActive,
  @HiveField(2)
  DontTalk,
}
