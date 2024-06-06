import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../core/colors/color.dart';
import '../../../../core/theme/font.dart';
import '../../../../utils/size.dart';
import '../../../../utils/white_space.dart';

class TaskCard extends StatelessWidget {
  final String status;
  const TaskCard({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/task-details', arguments: {
          'type': status == Status.pending ? 'editable' : 'notEditable'
        });
      },
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: grey.withOpacity(0.4), blurRadius: 10, spreadRadius: 1)
            ],
            borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.all(10),
        width: percentWidth(context: context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Chip(
              color: MaterialStatePropertyAll(grey),
              padding: EdgeInsets.all(0),
              labelStyle: SB10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.transparent)),
              label: Text(
                'UI ux Design',
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                'Design Task management App ',
                style: SB12,
              ),
              subtitle: Text(
                'Redesign fashion app for up dribble',
                style: R12,
              ),
              trailing: status == Status.done
                  ? Container(
                      padding: EdgeInsets.all(5),
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, color: black),
                      child: Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 10,
                      ))
                  : status == Status.wip
                      ? SvgPicture.asset(
                          'assets/icons/play.svg',
                          height: 20,
                          width: 20,
                        )
                      : SvgPicture.asset(
                          'assets/icons/pause.svg',
                          height: 20,
                          width: 20,
                        ),
            ),
            Container(
              height: 2,
              width: percentWidth(context: context, width: 100),
              child: Divider(
                height: 1,
                color: grey,
              ),
            ),
            whiteSpace(height: 11),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today, 10:00 am',
                    style: M12.copyWith(color: black.withOpacity(0.5)),
                  ),
                  Text(
                    '5 hours',
                    style: M12.copyWith(color: black.withOpacity(0.5)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Status {
  static String done = 'DONE';
  static String wip = 'WIP';
  static String pending = 'PENDING';
}
