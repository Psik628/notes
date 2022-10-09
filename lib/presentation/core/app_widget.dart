import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/application/auth/auth_bloc.dart';
import 'package:notes/application/theme/theme_bloc.dart';
import 'package:notes/themes.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

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
          BlocProvider(create: (context) => getIt<ThemeBloc>()),
          BlocProvider(create: (context) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested())),
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp.router(
              builder: (context, child) => ResponsiveWrapper.builder(
                  child,
                  maxWidth: 1200,
                  minWidth: 480,
                  defaultScale: true,
                  breakpoints: [
                    ResponsiveBreakpoint.resize(480, name: MOBILE),
                    ResponsiveBreakpoint.autoScale(800, name: TABLET),
                    ResponsiveBreakpoint.resize(1000, name: DESKTOP),
                  ],
                  background: Container(color: Color(0xFFF5F5F5))
              ),
              // easy localization
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              theme: appThemes[state.currentAppTheme],
              routerDelegate: _appRouter.delegate(),
              routeInformationParser: _appRouter.defaultRouteParser(),
              debugShowCheckedModeBanner: false,
              // todo rename
              title: 'Notes',
            );
          },
        ),
      );
  }
}