import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/src/logger.dart';
import 'package:notes/application/notes/note_actor/note_actor_bloc.dart';
import 'package:notes/domain/note/note.dart';
import 'package:notes/domain/note/note_failure.dart';
import 'package:notes/infrastructure/note/note_repository.dart';
import 'package:mockito/mockito.dart';

class MockNoteRepository extends Mock  implements NoteRepository{
  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) async {
    return right(unit);
  }
}

void main(){
  MockNoteRepository mockNoteRepository = MockNoteRepository();
  final List<Note> mockedNotes = <Note>[];
  Note note1 = Note(title:"title1", content: "content1", deadline: DateTime.now(), star: true);
  Note note2 = Note(title:"title2", content: "content2", deadline: DateTime.now(), star: true);
  Note note3 = Note(title:"title3", content: "content3", deadline: DateTime.now(), star: true);
  Note note4 = Note(title:"title4", content: "content4", deadline: DateTime.now(), star: true);
  Note note5 = Note(title:"title5", content: "content5", deadline: DateTime.now(), star: false);
  Note note6 = Note(title:"title6", content: "content6", deadline: DateTime.now(), star: false);
  mockedNotes..add(note1)..add(note2)..add(note3)..add(note4)..add(note5)..add(note6);

  Stream<Either<NoteFailure, List<Note>>> getMockedNotes() async* {
    for(int i = 0; i < 1; i++){
      // yield right(mockedNotes);
      yield left(NoteFailure.unexpected());
    }
  }

  setUp((){
    mockNoteRepository = MockNoteRepository();
    Note note1 = Note(title:"title1", content: "content1", deadline: DateTime.now(), star: true);
    Note note2 = Note(title:"title2", content: "content2", deadline: DateTime.now(), star: true);
    Note note3 = Note(title:"title3", content: "content3", deadline: DateTime.now(), star: true);
    Note note4 = Note(title:"title4", content: "content4", deadline: DateTime.now(), star: true);
    Note note5 = Note(title:"title5", content: "content5", deadline: DateTime.now(), star: false);
    Note note6 = Note(title:"title6", content: "content6", deadline: DateTime.now(), star: false);
    mockedNotes..add(note1)..add(note2)..add(note3)..add(note4)..add(note5)..add(note6);
  });

  // blocTest('NoteWatcherBloc WatchAllStarted',
  //   build: (){
  //     when(mockNoteRepository.watchAll()).thenAnswer((_) => Stream.fromIterable([right(mockedNotes)]));
  //     return NoteWatcherBloc(mockNoteRepository);
  //   },
  //   act: (bloc){
  //     bloc.add(const NoteWatcherEvent.watchAll());
  //   },
  //   expect: () => [
  //     const NoteWatcherState.initial(),
  //     const NoteWatcherState.loadInProgress(),
  //     NoteWatcherState.loadSuccess(mockedNotes),
  //   ],
  // );

  blocTest('NoteActorBloc Deleted',
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

  // blocTest('description',
  //   build: (){
  //     // todo solve this
  //     // https://www.youtube.com/watch?v=S6jFBiiP0Mc
  //
  //     //https://resocoder.com/2019/11/29/bloc-test-tutorial-easier-way-to-test-blocs-in-dart-flutter/#t-1665430105295
  //     when(mockNoteRepository.watchAll()).thenAnswer((realInvocation) => Stream<Either<NoteFailure, List<Note>>>.periodic(const Duration(seconds: 1), (_) => Note(tit)).take(15));
  //     return NoteWatcherBloc(mockNoteRepository);
  //   },
  //   act: (bloc){
  //     bloc.add(NoteWatcherEvent.watchAll());
  //   },
  //   expect: () => [
  //     NoteWatcherState.initial(),
  //     NoteWatcherState.loadInProgress(),
  //   ],
  // );
}