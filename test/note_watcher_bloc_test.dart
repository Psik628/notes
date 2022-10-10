import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:notes/domain/note/note_failure.dart';
import 'package:notes/infrastructure/note/note_repository.dart';
import 'package:mockito/mockito.dart';

class MockNoteRepository extends Mock implements NoteRepository{}

void main(){
  MockNoteRepository mockNoteRepository = MockNoteRepository();

  setUp((){
    mockNoteRepository = MockNoteRepository();
  });

  blocTest('description',
    build: (){
      // todo solve this
      // https://www.youtube.com/watch?v=S6jFBiiP0Mc

      //https://resocoder.com/2019/11/29/bloc-test-tutorial-easier-way-to-test-blocs-in-dart-flutter/#t-1665430105295
      when(mockNoteRepository.watchAll()).thenAnswer((realInvocation) => Stream<Either<NoteFailure, List<Note>>>.periodic(const Duration(seconds: 1), (_) => Note(tit)).take(15));
      return NoteWatcherBloc(mockNoteRepository);
    },
    act: (bloc){
      bloc.add(NoteWatcherEvent.watchAll());
    },
    expect: () => [
      NoteWatcherState.initial(),
      NoteWatcherState.loadInProgress(),
    ],
  );
}