import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:notes/domain/note/i_note_repository.dart';
import 'package:notes/domain/note/note.dart';
import 'package:notes/domain/note/note_failure.dart';
import 'package:rxdart/rxdart.dart';

import '../../logging.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository extends INoteRepository{

  final log = logger(NoteRepository);

  final FirebaseFirestore _firestore;

  NoteRepository(this._firestore);

  @override
  Future<Either<NoteFailure, Unit>> create(Note note) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<NoteFailure, Unit>> update(Note note) async {
    throw UnimplementedError();
    // try {
    //   final userDoc = await _firestore.userDocument();
    //   final noteDto = NoteDto.fromDomain(note);
    //
    //   await userDoc.noteCollection.doc(noteDto.id).update(noteDto.toJson());
    //
    //   return right(unit);
    // } on FirebaseException catch (e) {
    //   if (e.message.contains('PERMISSION_DENIED')) {
    //     return left(const NoteFailure.insufficientPermission());
    //   } else if (e.message.contains('NOT_FOUND')) {
    //     return left(const NoteFailure.unableToUpdate());
    //   } else {
    //     return left(const NoteFailure.unexpected());
    //   }
    // }
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) async {
    log.i('Deleting Note');
    try {
      // final DocumentReference userDoc = await _firestore.userDocument();
      final String noteId = note.id;

      // await userDoc.noteCollection.doc(noteId).delete();

      FirebaseFirestore.instance.collection('notes').doc(noteId).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const NoteFailure.unableToUpdate());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<NoteFailure, List<Note>>> watchAll() async* {
    yield* notesRef
        .snapshots()
        .map((snapshot){
      return right<NoteFailure, List<Note>>(
          snapshot.docs.map<Note>((NoteQueryDocumentSnapshot noteQueryDocumentSnapshot){
            Note completedNote = noteQueryDocumentSnapshot.data;
            completedNote.id = noteQueryDocumentSnapshot.id;
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