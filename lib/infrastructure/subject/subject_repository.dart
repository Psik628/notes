import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:notes/domain/note/note.dart';
import 'package:notes/domain/note/note_failure.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/note/i_note_repository.dart';

@LazySingleton(as: INoteRepository)
class SubjectRepository implements INoteRepository{

  @override
  Stream<Either<NoteFailure, List<Note>>> watchAll() async* {
    yield* notesRef
        .snapshots()
        .map((snapshot){
          return right<NoteFailure, List<Note>>(
              snapshot.docs.map<Note>((NoteQueryDocumentSnapshot noteQueryDocumentSnapshot){
                Note completedNote = noteQueryDocumentSnapshot.data;
                return completedNote;
              }).toList()
          );
        }).onErrorReturnWith((error, stackTrace){
          // todo implement onError functionality and null check !
          if (error is FirebaseException && error.message!.contains('PERMISSION_DENIED')) {
            return left(const NoteFailure.insufficientPermission());
          } else {
            return left(const NoteFailure.unexpected());
          }
        });
  }
}