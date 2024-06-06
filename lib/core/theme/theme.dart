import 'package:flutter/material.dart';

class AppTheme {
  static light() {
    return ThemeData(
      brightness: Brightness.light,
      bottomSheetTheme: BottomSheetThemeData(
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      dialogTheme: DialogTheme(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.white, surfaceTintColor: Colors.white),
      bottomNavigationBarTheme:
          BottomNavigationBarThemeData(backgroundColor: Colors.white),
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Montserrat',
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      useMaterial3: true,
    );
  }
}
