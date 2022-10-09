import 'package:dartz/dartz.dart';
import 'package:notes/domain/note/note_failure.dart';

import 'note.dart';

abstract class INoteRepository{
  Stream<Either<NoteFailure, List<Note>>> watchAll();
}