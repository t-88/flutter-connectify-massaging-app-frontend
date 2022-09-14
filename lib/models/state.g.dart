// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserStateAdapter extends TypeAdapter<UserState> {
  @override
  final int typeId = 3;

  @override
  UserState read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UserState.Active;
      case 1:
        return UserState.UnActive;
      case 2:
        return UserState.DontTalk;
      default:
        return UserState.Active;
    }
  }

  @override
  void write(BinaryWriter writer, UserState obj) {
    switch (obj) {
      case UserState.Active:
        writer.writeByte(0);
        break;
      case UserState.UnActive:
        writer.writeByte(1);
        break;
      case UserState.DontTalk:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserStateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
