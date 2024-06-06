import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/colors/color.dart';
import '../../../../core/theme/font.dart';
import '../../../../utils/size.dart';
import '../../../../utils/white_space.dart';

class MeetCard extends StatelessWidget {
  final String priority;
  const MeetCard({super.key, required this.priority});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5, bottom: 5),
      padding: EdgeInsets.all(5),
      width: percentWidth(context: context, width: 50),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: grey.withOpacity(0.4), blurRadius: 10, spreadRadius: 1)
          ],
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: percentWidth(context: context, width: 35),
                    child: Text(
                      'Meeting with client',
                      style: M12,
                    )),
                SvgPicture.asset(
                  'assets/icons/more.svg',
                  height: 24,
                  width: 24,
                )
              ],
            ),
          ),
          whiteSpace(height: 16),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Time',
                  style: R12.copyWith(color: black.withOpacity(0.5)),
                ),
                Text(
                  '11:00Pm',
                  style: R12,
                ),
              ],
            ),
          ),
          whiteSpace(height: 10),
          Chip(
            padding: EdgeInsets.all(8),
            side: BorderSide(color: grey),
            avatar: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: priority == 'High'
                      ? error
                      : priority == 'Mid'
                          ? warning
                          : success),
              height: 5,
              width: 5,
            ),
            color: MaterialStatePropertyAll(Colors.white),
            label: Text(
              '${priority} Priority',
              style: R10,
            ),
          ),
          Chip(
            padding: EdgeInsets.all(0),
            side: BorderSide.none,
            color: MaterialStatePropertyAll(grey.withOpacity(0.5)),
            label: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'www.https://zoom.us/',
                  style: R10,
                ),
                whiteSpace(width: 10),
                Icon(
                  Icons.copy,
                  size: 15,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
