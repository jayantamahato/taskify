import 'package:flutter/material.dart';

import '../../../../controller/task_controller.dart';
import '../../../../core/colors/color.dart';
import '../../../../core/theme/font.dart';

class FilerChip extends StatelessWidget {
  final String value;
  final bool isSelected;
  final TaskController taskController;
  const FilerChip(
      {super.key,
      required this.value,
      required this.isSelected,
      required this.taskController});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 0.5,
      onTap: () {
        taskController.selectedDay(value);
      },
      child: Chip(
        padding: EdgeInsets.all(0),
        backgroundColor: isSelected ? black : Colors.white,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: black),
            borderRadius: BorderRadius.circular(20)),
        label: Text(
          value,
          style: SB12.copyWith(color: isSelected ? Colors.white : black),
        ),
      ),
    );
  }
}
