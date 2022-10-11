import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/application/theme/theme_bloc.dart';
import 'package:notes/presentation/pages/home/widgets/note_form_widget.dart';
import 'package:notes/presentation/pages/home/widgets/note_wrapper_widget.dart';
import 'package:notes/presentation/ui_constants.dart';
import '../../../application/notes/note_actor/note_actor_bloc.dart';
import '../../../application/notes/note_form/note_form_bloc.dart';
import '../../../application/notes/note_watcher/note_watcher_bloc.dart';
import '../../../injection.dart';
import '../../../logging.dart';

class HomePage extends StatelessWidget {
  final log = logger(HomePage);

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
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NoteWrapperWidget(),
                      NoteFormWidget()
                    ],
                  );
                },
              ),
            )
        )
    );
  }
}
