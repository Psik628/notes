import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/getwidget.dart';
import 'package:notes/application/theme/theme_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:notes/presentation/ui_constants.dart';
import 'package:notes/translations_constants.dart';
import '../../../application/notes/note_actor/note_actor_bloc.dart';
import '../../../application/notes/note_form/note_form_bloc.dart';
import '../../../application/notes/note_watcher/note_watcher_bloc.dart';
import '../../../injection.dart';
import '../../../logging.dart';

class HomePage extends StatelessWidget {
  final log = logger(NoteActorBloc);

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<NoteActorBloc>()),
          BlocProvider(create: (context) => getIt<NoteFormBloc>()),
          BlocProvider(create: (context) => getIt<NoteWatcherBloc>()..add(const NoteWatcherEvent.watchAll())),
        ],
        child: Scaffold(
            body: SafeArea(
              minimum: const EdgeInsets.symmetric(vertical: UIConstants.safeAreaPaddingVertical, horizontal: UIConstants.safeAreaPaddingHorizontal),
              child: BlocBuilder<ThemeBloc, ThemeState>(
                builder: (context, ThemeState themeState) {
                  return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
                    builder: (context, NoteWatcherState noteWatcherState) {
                      return noteWatcherState.map(
                        initial: (_) => const GFLoader(type: GFLoaderType.android),
                        loadInProgress: (_) => const GFLoader(),
                        loadFailure: (LoadFailure value) {
                          // todo return failure UI
                          return const GFLoader(type: GFLoaderType.ios);
                        },
                        loadSuccess: (LoadSuccess state) {
                          return ListView.builder(
                            itemCount: state.notes.length,
                            itemBuilder: (BuildContext context, int noteIndex) {
                              return Slidable(
                                key: const ValueKey(0),
                                startActionPane: ActionPane(
                                  motion: const DrawerMotion(),
                                  dismissible: DismissiblePane(onDismissed: () {
                                    log.i('Deleting note from UI');
                                    context.read<NoteActorBloc>().add(NoteActorEvent.deleted(state.notes[noteIndex]));
                                  }),
                                  children: [
                                    SlidableAction(
                                      onPressed: (context){
                                        log.i('Deleting note from UI');
                                        context.read<NoteActorBloc>().add(NoteActorEvent.deleted(state.notes[noteIndex]));
                                      },
                                      backgroundColor: const Color(0xFFFE4A49),
                                      foregroundColor: Colors.white,
                                      icon: Icons.delete,
                                      label: TranslationsConstants.delete.tr(),
                                    ),
                                  ],
                                ),
                                endActionPane: ActionPane(
                                  motion: const DrawerMotion(),
                                  children: [
                                    SlidableAction(
                                      onPressed: (context){
                                        log.i('Staring note from UI');
                                        context.read<NoteActorBloc>().add(NoteActorEvent.starred(state.notes[noteIndex]));
                                        // todo show confirm dialog after deletion
                                        // showDialog(context: context, builder: (_) => AlertDialog());
                                      },
                                      backgroundColor: const Color(0xFFFE4A49),
                                      foregroundColor: state.notes[noteIndex].star ? Colors.blue : Colors.white,
                                      icon: Icons.star,
                                      label: TranslationsConstants.star.tr(),
                                    ),
                                  ],
                                ),
                                child: Card(
                                    child: ListTile(
                                      leading: const Icon(Icons.add),
                                      title: Text(state.notes[noteIndex].title),
                                      subtitle: Column(
                                        children: [
                                          state.notes[noteIndex].content != null ? Text(state.notes[noteIndex].content!) : const Offstage(),
                                          state.notes[noteIndex].deadline != null ? Text(state.notes[noteIndex].deadline!.toString()) : const Offstage(),
                                        ],
                                      ),
                                      trailing: const Icon(Icons.arrow_left),
                                    )
                                ),
                              );
                            }
                          );
                        }
                      );
                    },
                  );
                },
              ),
            )
        )
    );
  }
}
