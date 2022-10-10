part of 'note_watcher_bloc.dart';

@freezed
class NoteWatcherEvent with _$NoteWatcherEvent{
  const factory NoteWatcherEvent.watchAll() = WatchAllStarted;
  const factory NoteWatcherEvent.notesReceived(Either<NoteFailure, List<Note>> failureOrNotes) = NotesReceived;
}