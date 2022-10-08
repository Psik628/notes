import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'note_watcher_event.dart';
part 'note_watcher_state.dart';

class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  NoteWatcherBloc() : super(NoteWatcherInitial()) {
    on<NoteWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
