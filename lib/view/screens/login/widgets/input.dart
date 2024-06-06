import 'package:flutter/material.dart';

import '../../../../core/colors/color.dart';
import '../../../../core/theme/font.dart';

class AppInput extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool isPass;
  AppInput(
      {required this.controller, required this.hint, required this.isPass});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: TextField(
        cursorColor: black,
        obscureText: isPass,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 1, color: border)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 1, color: border)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 1, color: border)),
          hintText: hint,
          hintStyle: R14.copyWith(color: black),
        ),
      ),
    );
  }
}
