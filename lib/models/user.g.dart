// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 2;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      msgs: (fields[3] as List).cast<Msg>(),
      contacts: (fields[4] as List).cast<Contatct>(),
    )
      ..userName = fields[0] as String
      ..state = fields[1] as UserState
      ..unReadMsgs = (fields[2] as List).cast<Msg>();
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(5)
      ..writeByte(4)
      ..write(obj.contacts)
      ..writeByte(0)
      ..write(obj.userName)
      ..writeByte(1)
      ..write(obj.state)
      ..writeByte(2)
      ..write(obj.unReadMsgs)
      ..writeByte(3)
      ..write(obj.msgs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
