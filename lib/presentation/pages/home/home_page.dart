import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/getwidget.dart';
import 'package:notes/application/theme/theme_bloc.dart';
import 'package:notes/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          minimum: EdgeInsets.all(20),
          child: Container(
              child: BlocBuilder<ThemeBloc, ThemeState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      GFCard(
                        color: appThemes[state.currentAppTheme]!.primaryColor,
                      ),
                      GFCard(),
                      GFCard(),
                      GFCard(),
                      GFButton(
                          child: Text("Switch to green"),
                          onPressed: () {
                            context.read<ThemeBloc>().add(
                                const ThemeEvent.themeChanged(AppTheme.green));
                          }
                      ),
                      GFButton(
                          child: Text("Switch to orange"),
                          onPressed: () {
                            context.read<ThemeBloc>().add(
                                const ThemeEvent.themeChanged(AppTheme.orange));
                          }
                      )
                    ],
                  );
                },
              )
          ),
        )
    );
  }
}
