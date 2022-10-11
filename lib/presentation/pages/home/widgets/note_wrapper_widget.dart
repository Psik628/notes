import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/components/loader/gf_loader.dart';
import 'package:getwidget/types/gf_loader_type.dart';

import '../../../../application/notes/note_watcher/note_watcher_bloc.dart';

import '../../../../logging.dart';
import 'note_widget.dart';

class NoteWrapperWidget extends StatelessWidget {
  final log = logger(NoteWrapperWidget);

  NoteWrapperWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  shrinkWrap: true, // required to not have has size err
                  itemCount: state.notes.length,
                  itemBuilder: (BuildContext context, int noteIndex) {
                    return NoteWidget(currentNote: state.notes[noteIndex]);
                  }
              );
            }
        );
      },
    );
  }
}
