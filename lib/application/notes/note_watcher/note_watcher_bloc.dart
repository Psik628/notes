import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:notes/domain/note/note.dart';
import 'package:notes/domain/note/note_failure.dart';

import '../../../domain/note/i_note_repository.dart';
import '../../../logging.dart';

part 'note_watcher_event.dart';
part 'note_watcher_state.dart';
part 'note_watcher_bloc.freezed.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {

  final log = logger(NoteWatcherBloc);

  final INoteRepository _noteRepository;

  StreamSubscription<Either<NoteFailure, List<Note>>>? _notesStreamSubscription;

  NoteWatcherBloc(this._noteRepository) : super(const NoteWatcherState.initial()) {
    on<WatchAllStarted>((event, emit) async {

      log.i('Received WatchAll notes request');

      emit(const NoteWatcherState.loadInProgress());
      await _notesStreamSubscription?.cancel();
      _notesStreamSubscription = _noteRepository.watchAll().listen(
        (failureOrSubjects) {
          add(NoteWatcherEvent.notesReceived(failureOrSubjects));
        },
      );
    });

    on<NotesReceived>((NotesReceived event, emit) async {
      event.failureOrSubjects.fold(
        (NoteFailure failure) => {
        log.e('notes loaded unsuccessfully'),
          emit(NoteWatcherState.loadFailure(failure))
        },
        (List<Note> notes) => {
          log.i('all notes loaded successfully'),
          emit(NoteWatcherState.loadSuccess(notes))
        }
      );
    });
  }
}
