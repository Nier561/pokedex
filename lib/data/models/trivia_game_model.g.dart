// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trivia_game_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TriviaGameModelAdapter extends TypeAdapter<TriviaGameModel> {
  @override
  final int typeId = 12;

  @override
  TriviaGameModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TriviaGameModel(
      id: fields[0] as String,
      startTime: fields[1] as DateTime,
      endTime: fields[2] as DateTime?,
      totalScore: fields[3] as int,
      correctAnswers: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, TriviaGameModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.startTime)
      ..writeByte(2)
      ..write(obj.endTime)
      ..writeByte(3)
      ..write(obj.totalScore)
      ..writeByte(4)
      ..write(obj.correctAnswers);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TriviaGameModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
