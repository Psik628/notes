part of 'note_form_bloc.dart';

@freezed
class NoteFormState with _$NoteFormState {
  const factory NoteFormState.initial() = Initial;
  const factory NoteFormState.actionInProgress() = ActionInProgress;
  const factory NoteFormState.noteAdditionSuccess() = NoteAdditionSuccess;
  const factory NoteFormState.noteAdditionFailure(NoteFailure noteFailure) = NoteAdditionFailure;
}