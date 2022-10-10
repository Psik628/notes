import 'package:dartz/dartz.dart';
import 'package:notes/domain/note/note_failure.dart';

import 'note.dart';

abstract class INoteRepository{
  Stream<Either<NoteFailure, List<Note>>> watchAll();

  Future<Either<NoteFailure, void>> create(Note note);
  Future<Either<NoteFailure, void>> update(Note note);
  Future<Either<NoteFailure, void>> delete(Note note);
}