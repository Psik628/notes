import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../domain/note/note.dart';
import '../../../../logging.dart';

import 'package:flutter/material.dart';

import '../../../../translations_constants.dart';
import '../../../../application/notes/note_actor/note_actor_bloc.dart';


class NoteWidget extends StatelessWidget {
  final log = logger(NoteWidget);

  NoteWidget({Key? key, required this.currentNote}) : super(key: key);

  final Note currentNote;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      startActionPane: ActionPane(
        motion: const DrawerMotion(),
        dismissible: DismissiblePane(onDismissed: () {
          log.i('Deleting note from UI');
          context.read<NoteActorBloc>().add(NoteActorEvent.deleted(currentNote));
        }),
        children: [
          SlidableAction(
            onPressed: (context){
              log.i('Deleting note from UI');
              context.read<NoteActorBloc>().add(NoteActorEvent.deleted(currentNote));
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
              context.read<NoteActorBloc>().add(NoteActorEvent.starred(currentNote));
              // todo show confirm dialog after deletion
              // showDialog(context: context, builder: (_) => AlertDialog());
            },
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: currentNote.star ? Colors.blue : Colors.white,
            icon: Icons.star,
            label: TranslationsConstants.star.tr(),
          ),
        ],
      ),
      child: Card(
          child: ListTile(
            leading: const Icon(Icons.add),
            title: Text(currentNote.title),
            subtitle: Column(
              children: [
                currentNote.content != null ? Text(currentNote.content!) : const Offstage(),
                currentNote.deadline != null ? Text(currentNote.deadline!.toString()) : const Offstage(),
              ],
            ),
            trailing: const Icon(Icons.arrow_left),
          )
      ),
    );
  }
}
