import 'package:flutter/material.dart';

import '../../../../core/colors/color.dart';
import '../../../../core/theme/font.dart';
import '../../../../utils/white_space.dart';

class PointCard extends StatelessWidget {
  final String value;
  final String name;
  const PointCard({super.key, required this.value, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124,
      width: 124,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: grey.withOpacity(0.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            value,
            style: SB18,
          ),
          whiteSpace(height: 5),
          Text(
            name,
            style: R14,
          )
        ],
      ),
    );
  }
}
