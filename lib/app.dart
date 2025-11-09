import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'router/app_router.dart';

class TechFadeApp extends StatelessWidget {
  const TechFadeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'TechFade',
      theme: buildTheme(),
      debugShowCheckedModeBanner: false,
      routerConfig: buildRouter(),
    );
  }
}
