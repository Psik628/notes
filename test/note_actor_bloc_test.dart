import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes/application/notes/note_actor/note_actor_bloc.dart';
import 'package:notes/domain/note/note.dart';
import 'package:notes/domain/note/note_failure.dart';
import 'package:notes/infrastructure/note/note_repository.dart';
import 'package:mockito/mockito.dart';

class MockNoteRepository extends Mock  implements NoteRepository{
  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) async {
    if(note.title == 'title1'){
      return right(unit);
    }else{
      return left(const NoteFailure.unableToDelete());
    }
  }
}

void main(){
  MockNoteRepository mockNoteRepository = MockNoteRepository();
  Note note1 = Note(title:"title1", content: "content1", deadline: DateTime.now(), star: true);
  Note note2 = Note(title:"title2", content: "content2", deadline: DateTime.now(), star: true);

  setUp((){

  });

  blocTest('NoteActorBloc note deletion success',
    build: (){
      /*when(mockNoteRepository.delete(note1)).thenAnswer((_) async => right(unit));*/
      return NoteActorBloc(mockNoteRepository);
    },
    act: (bloc){
      bloc.add(NoteActorEvent.deleted(note1));
    },
    expect: () => [
      const NoteActorState.actionInProgress(),
      const NoteActorState.deleteSuccess(),
    ],
  );

  blocTest('NoteActorBloc note deletion failure',
    build: (){
      /*when(mockNoteRepository.delete(note1)).thenAnswer((_) async => right(unit));*/
      return NoteActorBloc(mockNoteRepository);
    },
    act: (bloc){
      bloc.add(NoteActorEvent.deleted(note2));
    },
    expect: () => [
      const NoteActorState.actionInProgress(),
      const NoteActorState.deleteFailure(NoteFailure.unableToDelete()),
    ],
  );
}