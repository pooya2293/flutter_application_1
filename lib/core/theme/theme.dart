import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_pallet.dart';

class AppTheme {
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
  );
}
