import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:notes/domain/note/timestamp_converter.dart';

// manual import of generated file
part 'note.g.dart';

@JsonSerializable(explicitToJson: true)
class Note{

  Note({required this.id ,required this.title, this.content, this.deadline, required this.star});

  String id;
  String title;
  String? content;
  bool star;
  @JsonKey(
      name: "deadline",
      fromJson: dateTimeFromTimeStamp,
      toJson: dateTimeToTimeStamp)
  DateTime? deadline;

  factory Note.fromJson(Map<String, Object?> json) => _$NoteFromJson(json);

  Map<String, Object?> toJson() => _$NoteToJson(this);
}
@Collection<Note>('notes')
final notesRef = NoteCollectionReference();