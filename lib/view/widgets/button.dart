import 'package:flutter/material.dart';

import '../../core/colors/color.dart';
import '../../core/theme/font.dart';
import '../../utils/size.dart';

class AppButton extends StatelessWidget {
  final String name;
  final Function fn;
  const AppButton({super.key, required this.name, required this.fn});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: percentWidth(context: context),
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(black),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          onPressed: () {
            fn();
          },
          child: Text(
            name,
            style: M18,
          )),
    );
  }
}
