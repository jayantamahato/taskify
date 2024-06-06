import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/colors/color.dart';
import '../../../../core/theme/font.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: TextField(
        cursorColor: black,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20),
            hintText: 'Search your task',
            hintStyle: R14,
            filled: true,
            fillColor: grey.withOpacity(0.5),
            border: OutlineInputBorder(borderSide: BorderSide.none),
            prefixIconConstraints: BoxConstraints(maxWidth: 60, maxHeight: 40),
            prefixIcon: Container(
              margin: EdgeInsets.only(right: 15, left: 15),
              child: SvgPicture.asset(
                'assets/icons/search.svg',
              ),
            )),
      ),
    );
  }
}
