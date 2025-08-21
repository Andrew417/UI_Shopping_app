import 'package:flutter/material.dart';
import 'package:nectar_ui/compnents/button/bottom_bar.dart';
import 'package:nectar_ui/core/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      home: MainPage(),
    );
  }
}
