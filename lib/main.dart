import 'package:flutter/material.dart';
import 'package:tok_tik/config/theme/app_theme.dart';
import 'package:tok_tik/presentation/screens/discoveer/discover_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen());
  }
}
