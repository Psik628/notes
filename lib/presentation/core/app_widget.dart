import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/application/auth/auth_bloc.dart';
import 'package:notes/application/notes/note_actor/note_actor_bloc.dart';
import 'package:notes/application/notes/note_form/note_form_bloc.dart';
import 'package:notes/application/notes/note_watcher/note_watcher_bloc.dart';

import '../../injection.dart';
import '../routes/app_router.dart';

class AppWidget extends StatelessWidget {

  final _appRouter = AppRouter();

  AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
      MultiBlocProvider(
        providers: [
          // check if user is signed in as soon as possible
          BlocProvider(create: (context) => getIt<NoteActorBloc>()),
          BlocProvider(create: (context) => getIt<NoteFormBloc>()),
          BlocProvider(create: (context) => getIt<NoteWatcherBloc>()),
          BlocProvider(create: (context) => getIt<AuthBloc>()),
        ],
        child: MaterialApp.router(
          // easy localization
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: ThemeData.dark(),
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          debugShowCheckedModeBanner: false,
          // todo rename
          title: 'Material App',
        ),
      );
  }
}