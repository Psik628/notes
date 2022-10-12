part of 'note_form_bloc.dart';


@freezed
class NoteFormEvent with _$NoteFormEvent{
  const factory NoteFormEvent.noteAdded(Note note) = NoteAdded;
}