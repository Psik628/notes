import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/getwidget.dart';
import 'package:notes/application/theme/theme_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../../application/notes/note_actor/note_actor_bloc.dart';
import '../../../application/notes/note_form/note_form_bloc.dart';
import '../../../application/notes/note_watcher/note_watcher_bloc.dart';
import '../../../injection.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              minimum: EdgeInsets.all(20),
              child: BlocBuilder<ThemeBloc, ThemeState>(
                builder: (context, ThemeState themeState) {
                  return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
                    builder: (context, NoteWatcherState noteWatcherState) {
                      return noteWatcherState.map(
                        initial: (_) => const GFLoader(type: GFLoaderType.ios),
                        loadInProgress: (_) => const GFLoader(),
                        loadFailure: (LoadFailure value) {
                          return const GFLoader(type: GFLoaderType.square);
                        },
                        loadSuccess: (LoadSuccess state) {
                          return ListView.builder(
                            itemCount: state.notes.length,
                            itemBuilder: (BuildContext context, int noteIndex) {
                              return Slidable(
                                key: const ValueKey(0),
                                startActionPane: ActionPane(
                                  motion: const DrawerMotion(),
                                  dismissible: DismissiblePane(onDismissed: () {}),
                                  children: [
                                    SlidableAction(
                                      // todo on pressed unstar this todo
                                      onPressed: null,
                                      backgroundColor: Colors.blue,
                                      foregroundColor: state.notes[noteIndex].star ?  Colors.red : Colors.white,
                                      icon: Icons.star,
                                      label: 'Highlight',
                                    ),
                                  ],
                                ),
                                endActionPane: const ActionPane(
                                  motion: DrawerMotion(),
                                  children: [
                                    SlidableAction(
                                      onPressed: null,
                                      backgroundColor: Color(0xFFFE4A49),
                                      foregroundColor: Colors.white,
                                      icon: Icons.delete,
                                      label: 'Delete',
                                    ),
                                  ],
                                ),
                                child: Card(
                                    child: ListTile(
                                      leading: Icon(Icons.add),
                                      title: Text(state.notes[noteIndex].title),
                                      subtitle: Column(
                                        children: [
                                          state.notes[noteIndex].content != null ? Text(state.notes[noteIndex].content!) : const Offstage(),
                                          state.notes[noteIndex].deadline != null ? Text(state.notes[noteIndex].deadline!.toString()) : const Offstage(),
                                        ],
                                      ),
                                      trailing: Icon(Icons.arrow_left),
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
