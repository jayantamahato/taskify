import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/colors/color.dart';
import '../../../core/theme/font.dart';
import '../../../utils/size.dart';
import '../../../utils/white_space.dart';
import 'widgets/edit_sheet.dart';
import 'widgets/information_popup.dart';
import 'widgets/point_card.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            margin: EdgeInsets.only(left: 20),
            height: 19,
            width: 19,
            child: SvgPicture.asset(
              'assets/icons/back.svg',
              height: 29,
              width: 29,
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.arguments['type'] == 'editable'
                  ? showModalBottomSheet(
                      context: context, builder: (context) => EditSheet())
                  : showDialog(
                      context: context,
                      builder: (context) => information(context: context),
                    );
            },
            child: Container(
                margin: EdgeInsets.only(right: 10),
                child: SvgPicture.asset('assets/icons/more.svg')),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
        child: Column(
          children: [
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Project name',
                    style: R14.copyWith(color: black.withOpacity(0.5)),
                  ),
                  whiteSpace(height: 10),
                  Text(
                    'Mvp Task manager',
                    style: SB18,
                  ),
                  whiteSpace(height: 10),
                  SizedBox(
                    height: 1,
                    width: percentWidth(context: context),
                    child: Divider(
                      height: 1,
                      color: grey.withOpacity(0.5),
                    ),
                  )
                ],
              ),
            ),
            whiteSpace(height: 20),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Task details',
                    style: R14.copyWith(color: black.withOpacity(0.5)),
                  ),
                  whiteSpace(height: 10),
                  Text(
                    'Design Task management App ',
                    style: M16,
                  ),
                  whiteSpace(height: 10),
                  SizedBox(
                    height: 1,
                    width: percentWidth(context: context),
                    child: Divider(
                      height: 1,
                      color: grey.withOpacity(0.5),
                    ),
                  )
                ],
              ),
            ),
            whiteSpace(height: 20),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: R14.copyWith(color: black.withOpacity(0.5)),
                  ),
                  whiteSpace(height: 10),
                  Text(
                    'Design Task management App.Design Task management App Design Task management App Design Task management App Design',
                    style: M14,
                  ),
                  whiteSpace(height: 10),
                  SizedBox(
                    height: 1,
                    width: percentWidth(context: context),
                    child: Divider(
                      height: 1,
                      color: grey.withOpacity(0.5),
                    ),
                  )
                ],
              ),
            ),
            whiteSpace(height: 20),
            Get.arguments['status'] == 'WIP'
                ? SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Start Date',
                          style: R14.copyWith(color: black.withOpacity(0.5)),
                        ),
                        whiteSpace(height: 10),
                        Text(
                          '4Apr2024 ',
                          style: M16,
                        ),
                        whiteSpace(height: 10),
                        SizedBox(
                          height: 1,
                          width: percentWidth(context: context),
                          child: Divider(
                            height: 1,
                            color: grey.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  )
                : SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Start Date',
                              style:
                                  R14.copyWith(color: black.withOpacity(0.5)),
                            ),
                            whiteSpace(height: 10),
                            Text(
                              '4Apr2024 ',
                              style: M16,
                            ),
                            whiteSpace(height: 10),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Start time',
                              style:
                                  R14.copyWith(color: black.withOpacity(0.5)),
                            ),
                            whiteSpace(height: 10),
                            Text(
                              '04:45PM',
                              style: M16,
                            ),
                            whiteSpace(height: 10),
                          ],
                        ),
                      ],
                    ),
                  ),
            whiteSpace(height: 20),
            Get.arguments['status'] == 'WIP'
                ? SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Start time',
                          style: R14.copyWith(color: black.withOpacity(0.5)),
                        ),
                        whiteSpace(height: 10),
                        Text(
                          '04:45PM',
                          style: M16,
                        ),
                        whiteSpace(height: 10),
                        SizedBox(
                          height: 1,
                          width: percentWidth(context: context),
                          child: Divider(
                            height: 1,
                            color: grey.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  )
                : SizedBox(),
            Get.arguments['status'] == 'WIP' ||
                    Get.arguments['status'] == 'PENDING'
                ? SizedBox()
                : SizedBox(
                    width: percentWidth(context: context, width: 85),
                    height: percentHeight(context: context, height: 20),
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      runAlignment: WrapAlignment.spaceBetween,
                      runSpacing: 30,
                      children: [
                        PointCard(value: '20', name: 'Points'),
                        PointCard(value: '10', name: 'Hours'),
                        PointCard(value: 'Approved', name: 'Ali')
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
