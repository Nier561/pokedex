// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trivia_score_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TriviaScoreModelAdapter extends TypeAdapter<TriviaScoreModel> {
  @override
  final int typeId = 10;

  @override
  TriviaScoreModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TriviaScoreModel(
      id: fields[0] as String,
      totalScore: fields[1] as int,
      correctAnswers: fields[2] as int,
      totalQuestions: fields[3] as int,
      accuracy: fields[4] as double,
      completionTime: fields[5] as int,
      date: fields[6] as DateTime,
      achievementsUnlocked: (fields[7] as List).cast<String>(),
      userName: fields[8] == null ? 'Trainer' : fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TriviaScoreModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.totalScore)
      ..writeByte(2)
      ..write(obj.correctAnswers)
      ..writeByte(3)
      ..write(obj.totalQuestions)
      ..writeByte(4)
      ..write(obj.accuracy)
      ..writeByte(5)
      ..write(obj.completionTime)
      ..writeByte(6)
      ..write(obj.date)
      ..writeByte(7)
      ..write(obj.achievementsUnlocked)
      ..writeByte(8)
      ..write(obj.userName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TriviaScoreModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
