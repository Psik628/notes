import 'package:flutter/material.dart';

enum AppTheme{
  light,
  dark,

}

// COMPLETE THEME IMPLEMENTATIONS
// https://github.com/retroportalstudio/flutter_theming/blob/master/lib/theme/theme_constants.dart

final appThemes = <AppTheme, ThemeData>{
  AppTheme.light: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green
  ),
  AppTheme.dark: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.red
  ),
};