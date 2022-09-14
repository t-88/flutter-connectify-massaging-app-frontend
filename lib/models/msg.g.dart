// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msg.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MsgAdapter extends TypeAdapter<Msg> {
  @override
  final int typeId = 0;

  @override
  Msg read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Msg(
      txt: fields[0] as String,
      time: fields[1] as String,
      isUser: fields[2] as bool,
      isRead: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Msg obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.txt)
      ..writeByte(1)
      ..write(obj.time)
      ..writeByte(2)
      ..write(obj.isUser)
      ..writeByte(3)
      ..write(obj.isRead);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MsgAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
