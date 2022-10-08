import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

enum AppTheme{
  green,
  blue,
  dark,
  orange,
  light
}

// COMPLETE THEME IMPLEMENTATIONS
// https://github.com/retroportalstudio/flutter_theming/blob/master/lib/theme/theme_constants.dart

final appThemes = <AppTheme, ThemeData>{
  AppTheme.green: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green
  ),
  AppTheme.blue: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue
  ),
  AppTheme.orange: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.orange
  ),
  AppTheme.light: ThemeData(
    brightness: Brightness.light,
  ),
  AppTheme.dark: ThemeData(
      brightness: Brightness.dark,
  ),
};