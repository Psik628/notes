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
                        color: Theme.of(context).cardColor,
                        title: GFListTile(
                          titleText: 'nakoupit brambory',
                        ),
                      ),
                      GFCard(
                        color: Theme.of(context).cardColor,
                      ),
                      GFCard(
                        color: Theme.of(context).cardColor,
                      ),
                      GFCard(
                        color: Theme.of(context).cardColor,
                      ),
                      GFButton(
                          child: Text("Switch to light"),
                          onPressed: () {
                            context.read<ThemeBloc>().add(const ThemeEvent.themeChanged(AppTheme.light));
                          }
                      ),
                      GFButton(
                          child: Text("Switch to dark"),
                          onPressed: () {
                            context.read<ThemeBloc>().add(const ThemeEvent.themeChanged(AppTheme.dark));
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
