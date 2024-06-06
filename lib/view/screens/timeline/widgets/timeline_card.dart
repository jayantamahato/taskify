import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/colors/color.dart';
import '../../../../core/theme/font.dart';
import '../../../../utils/size.dart';
import '../../../../utils/white_space.dart';
import 'meet_card.dart';
import 'user_card.dart';

class TimelineCard extends StatelessWidget {
  final List users;
  final String status;
  final String title;
  final int progress;

  TimelineCard(
      {super.key,
      required this.users,
      required this.status,
      required this.progress,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, bottom: 10, right: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: grey.withOpacity(0.4), blurRadius: 10, spreadRadius: 1)
          ],
          borderRadius: BorderRadius.circular(5)),
      padding: EdgeInsets.all(9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            minVerticalPadding: 1,
            contentPadding: EdgeInsets.all(0),
            title: Text(
              title,
              style: M14,
            ),
            subtitle: Text(''),
            trailing: SvgPicture.asset('assets/icons/more.svg'),
          ),
          Text(
            'Task planner App with clean and modern... ',
            style: S12,
          ),
          whiteSpace(height: 20),
          UserCards(
            context: context,
            users: users,
          ),
          Container(
            width: percentWidth(context: context),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MeetCard(priority: 'High'),
                  MeetCard(priority: 'Low'),
                  MeetCard(priority: 'Mid'),
                  MeetCard(priority: 'High'),
                ],
              ),
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Progress',
                        style: R12.copyWith(color: black.withOpacity(0.5)),
                      ),
                      Text(
                        '${progress} %',
                        style: R12.copyWith(color: black.withOpacity(0.5)),
                      ),
                    ],
                  ),
                ),
                whiteSpace(height: 5),
                LinearProgressIndicator(
                  backgroundColor: grey,
                  color: black,
                  value: progress / 100,
                  borderRadius: BorderRadius.circular(10),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
