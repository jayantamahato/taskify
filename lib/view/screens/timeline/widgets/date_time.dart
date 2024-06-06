import 'package:Taskify/utils/size.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/font.dart';

class DateAndTime extends StatelessWidget {
  const DateAndTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: percentWidth(context: context, width: 100),
        padding: EdgeInsets.all(16),
        child: Text(
          'May,18 \n24,Tuesday',
          style: SB18.copyWith(fontSize: 28),
        ));
  }
}
