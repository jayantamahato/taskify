import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../controller/task_controller.dart';
import '../../../../core/colors/color.dart';
import '../../../../core/theme/font.dart';
import '../../../../utils/size.dart';
import '../../../../utils/white_space.dart';
import '../../../widgets/button.dart';
import 'calender.dart';
import 'filer_chip.dart';
import 'increment_decrement.dart';

class CreateTask extends StatelessWidget {
  final BuildContext context;
  final TaskController taskController;
  CreateTask({super.key, required this.context, required this.taskController});

  final List _timeLine = [
    'Yesterday',
    'Today',
    'Tomorrow',
  ];
  var _projects = [
    '',
    'Araby AI',
    'Kudos Website',
    'Bixby',
  ];
  var _task = [
    '',
    'UI ux design',
    'API integrations',
    'Code rectify',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: percentHeight(context: context, height: 93),
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              alignment: Alignment.centerLeft,
              height: 25,
              width: percentWidth(context: context),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: SvgPicture.asset('assets/icons/close.svg')),
            ),
            Text(
              'New Task',
              style: B16,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: percentWidth(context: context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ..._timeLine.map(
                    (element) => Obx(
                      () => FilerChip(
                        taskController: taskController,
                        isSelected: taskController.selectedDay == element,
                        value: element,
                      ),
                    ),
                  ),
                  Obx(
                    () => InkWell(
                      onTap: () {
                        taskController.selectedDay('calender');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: taskController.selectedDay == 'calender'
                                ? black
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(5),
                        child: SvgPicture.asset(
                          'assets/icons/calender.svg',
                          color: taskController.selectedDay == 'calender'
                              ? Colors.white
                              : black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Obx(() => taskController.selectedDay.value == 'calender'
                ? Calender()
                : SizedBox()),
            SizedBox(
              width: percentWidth(context: context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  whiteSpace(height: 16),
                  Text(
                    'Project',
                    style: SB12.copyWith(color: black.withOpacity(0.5)),
                  ),
                  whiteSpace(height: 8),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: grey),
                        borderRadius: BorderRadius.circular(10)),
                    width: percentWidth(context: context),
                    child: Obx(
                      () => DropdownButton(
                          alignment: Alignment.center,
                          isExpanded: true,
                          value: '${taskController.selectedProject.value}',
                          underline: SizedBox(),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          items: _projects.map((String e) {
                            return DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            );
                          }).toList(),
                          onChanged: (value) {
                            taskController.selectedProject(value);
                          }),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: percentWidth(context: context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  whiteSpace(height: 16),
                  Text(
                    'Project',
                    style: SB12.copyWith(color: black.withOpacity(0.5)),
                  ),
                  whiteSpace(height: 8),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: grey),
                        borderRadius: BorderRadius.circular(10)),
                    width: percentWidth(context: context),
                    child: Obx(
                      () => DropdownButton(
                        alignment: Alignment.center,
                        isExpanded: true,
                        value: taskController.selectedTask.value,
                        underline: SizedBox(),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: black,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        items: _task
                            .map(
                              (String e) => DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          taskController.selectedTask(value);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: percentWidth(context: context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  whiteSpace(height: 16),
                  Text(
                    'Task description',
                    style: SB12.copyWith(color: black.withOpacity(0.5)),
                  ),
                  whiteSpace(height: 8),
                  TextField(
                    cursorColor: black,
                    decoration: InputDecoration(
                      hintText: 'Add description...',
                      hintStyle: R12,
                      focusedBorder: _inputDecoration,
                      enabledBorder: _inputDecoration,
                      border: _inputDecoration,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: percentWidth(context: context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  whiteSpace(height: 16),
                  Text(
                    'Select hours',
                    style: SB12.copyWith(color: black.withOpacity(0.5)),
                  ),
                  whiteSpace(height: 8),
                  IncrementDecrement(
                      taskController: taskController, type: 'hours'),
                ],
              ),
            ),
            SizedBox(
              width: percentWidth(context: context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  whiteSpace(height: 16),
                  Text(
                    'Task points',
                    style: SB12.copyWith(color: black.withOpacity(0.5)),
                  ),
                  whiteSpace(height: 8),
                  IncrementDecrement(
                      taskController: taskController, type: 'point'),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    top: percentHeight(context: context, height: 9)),
                child: AppButton(name: 'Create', fn: () {}))
          ],
        ),
      ),
    );
  }

  OutlineInputBorder _inputDecoration = OutlineInputBorder(
    borderSide: BorderSide(color: grey),
    borderRadius: BorderRadius.circular(10),
  );
}
