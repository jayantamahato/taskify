import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/theme/theme.dart';
import 'route/route.dart';
import 'view/screens/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppScreen _appscreen = AppScreen();

    return GetMaterialApp(
      title: 'Taskify',
      theme: AppTheme.light(),
      home: _appscreen.loginScreen,
      getPages: AppRoute.routes(),
    );
  }
}
