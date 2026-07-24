import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_pallet.dart';

class AppTheme {
  static final _border = OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppPallete.borderColor,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(20),
      );
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      enabledBorder: _border,
      focusedBorder: _border,
    ),
  );
}
