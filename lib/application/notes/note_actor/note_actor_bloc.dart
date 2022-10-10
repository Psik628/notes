import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/note/i_note_repository.dart';
import '../../../domain/note/note.dart';
import '../../../domain/note/note_failure.dart';
import '../../../logging.dart';

part 'note_actor_event.dart';
part 'note_actor_state.dart';
part 'note_actor_bloc.freezed.dart';

@injectable
class NoteActorBloc extends Bloc<NoteActorEvent, NoteActorState> {
  final log = logger(NoteActorBloc);

  final INoteRepository _noteRepository;

  NoteActorBloc(this._noteRepository) : super(const NoteActorState.initial()) {
    on<Deleted>((Deleted event, emit) {
        log.i('Received delete note request');
        emit(const ActionInProgress());
        
        final possibleFailure = _noteRepository.delete(event.note);

        // yield possibleFailure.fold(
        //       (f) => NoteActorState.deleteFailure(f),
        //       (_) => const NoteActorState.deleteSuccess(),
        // );
    });
  }
}
