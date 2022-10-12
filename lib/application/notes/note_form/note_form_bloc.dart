import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes/domain/note/note_failure.dart';

import '../../../domain/note/i_note_repository.dart';
import '../../../domain/note/note.dart';
import '../../../logging.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final log = logger(NoteFormBloc);

  final INoteRepository _noteRepository;

  NoteFormBloc(this._noteRepository) : super(const NoteFormState.initial()) {
    on<NoteAdded>((NoteAdded event, emit) async {
      log.i('Add note request received');
      emit(const NoteFormState.actionInProgress());

      final possibleFailure = await _noteRepository.create(event.note);

      possibleFailure.fold(
        (failure){
            log.e('Note creation failure');
            emit(NoteFormState.noteAdditionFailure(failure));
        },
        (_){
          log.i('Note creation success');
          emit(const NoteFormState.noteAdditionSuccess());
        }
      );

    });
  }
}
