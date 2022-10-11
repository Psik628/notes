import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:notes/presentation/ui_constants.dart';
import 'package:notes/translations_constants.dart';

class NoteFormPage extends StatelessWidget {
  NoteFormPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormBuilderState>();

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
                name: 'text',
                onChanged: (val) {
                  print(val); // Print the text value write into TextField
                },
              ),
            ),
            FormBuilderCheckbox(name: 'ag', title: Text('ahoj')),
            FormBuilderChoiceChip(name: 'ff', options: [
                FormBuilderChipOption<String>(value: 'ahoj'),
                FormBuilderChipOption<String>(value: 'cau'),
                FormBuilderChipOption<String>(value: 'ano'),
                FormBuilderChipOption<String>(value: 'nee')
              ],
            ),
            GFButton(
              fullWidthButton: true,
              text: TranslationsConstants.addNewNote.tr(),
              onPressed: () {
                // todo this
              },
            )
          ],
        ),
      ),
    );
  }
}
