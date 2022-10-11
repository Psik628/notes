import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:notes/presentation/routes/app_router.dart';
import 'package:notes/translations_constants.dart';

class NoteFormWidget extends StatelessWidget {
  const NoteFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GFButton(
      fullWidthButton: true,
      onPressed: (){
        AutoRouter.of(context).push(const NoteFormPageRoute());
      },
      icon: const Icon(Icons.add),
      child: const Text(TranslationsConstants.addNewNote).tr(),
    );
  }
}
