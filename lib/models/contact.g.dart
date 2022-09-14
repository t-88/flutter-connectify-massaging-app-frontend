// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ContatctAdapter extends TypeAdapter<Contatct> {
  @override
  final int typeId = 1;

  @override
  Contatct read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Contatct(
      userName: fields[0] as String,
      msgs: (fields[3] as List).cast<Msg>(),
      state: fields[1] as UserState,
    )..unReadMsgs = (fields[2] as List).cast<Msg>();
  }

  @override
  void write(BinaryWriter writer, Contatct obj) {
    writer
      ..writeByte(4)
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
      other is ContatctAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
