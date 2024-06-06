import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../controller/task_controller.dart';
import '../../../../core/colors/color.dart';
import '../../../../core/theme/font.dart';

class IncrementDecrement extends StatelessWidget {
  final TaskController taskController;
  final String type;
  const IncrementDecrement(
      {super.key, required this.taskController, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: type == 'point'
                ? () {
                    taskController.selectedPoint.value < 3
                        ? null
                        : taskController.selectedPoint.value =
                            taskController.selectedPoint.value - 1;
                  }
                : () {
                    taskController.selectedTime.value < 3
                        ? null
                        : taskController.selectedTime.value =
                            taskController.selectedTime.value - 1;
                  },
            child: SvgPicture.asset(
              'assets/icons/decrement.svg',
            ),
          ),
          type == 'point'
              ? Obx(() => Text(
                    '${taskController.selectedPoint.value}',
                    style: M18,
                  ))
              : Obx(() => Text(
                    '${taskController.selectedTime.value}',
                    style: M18,
                  )),
          InkWell(
              onTap: type == 'point'
                  ? () {
                      taskController.selectedPoint.value =
                          taskController.selectedPoint.value + 1;
                    }
                  : () {
                      taskController.selectedTime.value =
                          taskController.selectedTime.value + 1;
                    },
              child: SvgPicture.asset('assets/icons/increment.svg'))
        ],
      ),
    );
  }
}
