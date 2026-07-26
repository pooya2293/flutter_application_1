import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/theme.dart';
import 'package:flutter_application_1/features/auth/presentaion/pages/login_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Planing App',
      theme: AppTheme.darkThemeMode,
      home: const LoginPage(),
    );
  }
}
