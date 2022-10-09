part of 'note_watcher_bloc.dart';

@freezed
class NoteWatcherState with _$NoteWatcherState{
  const factory NoteWatcherState.initial() = Initial;
  const factory NoteWatcherState.loadInProgress() = LoadInProgress;
  const factory NoteWatcherState.loadSuccess(List<Note> notes) = LoadSuccess;
  const factory NoteWatcherState.loadFailure(NoteFailure noteFailure) = LoadFailure;
}
