import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:notes/application/notes/note_form/note_form_bloc.dart';
import 'package:notes/presentation/ui_constants.dart';
import 'package:notes/translations_constants.dart';

import '../../../domain/note/note.dart';

class NoteFormPage extends StatefulWidget {
  NoteFormPage({Key? key}) : super(key: key);

  @override
  State<NoteFormPage> createState() => _NoteFormPageState();
}

class _NoteFormPageState extends State<NoteFormPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  late String title;
  late String content;
  late bool star;
  late DateTime deadline;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(vertical: UIConstants.safeAreaPaddingVertical, horizontal: UIConstants.safeAreaPaddingHorizontal),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text(TranslationsConstants.addNewNote).tr()),
            FormBuilder(
              key: _formKey,
              child:  FormBuilderTextField(
                name: 'note title',
                onChanged: (val) {
                  setState(() {
                    this.title = val!;
                  }); // Print the text value write into TextField
                },
              ),
            ),
            FormBuilderTextField(
              name: 'note content',
              onChanged: (val) {
                setState(() {
                  this.content = val!;
                }); // Print the text value write into TextField
              },
            ),
            FormBuilderCheckbox(
              name: 'note star',
              title: Text(TranslationsConstants.star).tr(),
              onChanged: (selected){
                setState(() {
                  this.star = selected!;
                });
              },
            ),
            FormBuilderDateTimePicker(
              name: TranslationsConstants.deadline.tr(),
              onChanged: (DateTime? dateTime){
                setState(() {
                  this.deadline = dateTime!;
                });
              },
            ),
            GFButton(
              fullWidthButton: true,
              text: TranslationsConstants.addNewNote.tr(),
              onPressed: () {
                // context.read<NoteFormBloc>().add(NoteFormEvent.noteAdded(Note()));
              },
            )
          ],
        ),
      ),
    );
  }
}
