import 'package:dartz/dartz.dart';
import 'package:notes/domain/note/note_failure.dart';

import 'note.dart';

abstract class INoteRepository{
  Stream<Either<NoteFailure, List<Note>>> watchAll();

  Future<Either<NoteFailure, Unit>> create(Note note);
  Future<Either<NoteFailure, Unit>> update(Note note);
  Future<Either<NoteFailure, Unit>> delete(Note note);
}