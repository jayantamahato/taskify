import 'package:flutter/material.dart';

import '../../../../core/colors/color.dart';
import '../../../../core/theme/font.dart';
import '../../../../utils/white_space.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: grey.withOpacity(0.4), blurRadius: 10, spreadRadius: 1)
          ],
          borderRadius: BorderRadius.circular(5)),
      padding: EdgeInsets.all(9),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: Container(
              decoration: BoxDecoration(color: grey, shape: BoxShape.circle),
              height: 32,
              width: 32,
              child: Image.asset('assets/images/nImage.png'),
            ),
            title: Text(
              'Araby ai',
              style: M14,
            ),
          ),
          Text(
            'Task planner App with clean and modern... ',
            style: S12.copyWith(color: black.withOpacity(0.5)),
          ),
          whiteSpace(height: 16),
          SizedBox(
            height: 1,
            child: Divider(
              color: grey.withOpacity(0.3),
            ),
          ),
          whiteSpace(height: 2),
          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text(
              'Link Preview',
              style: R12,
            ),
            subtitle: Text(
              'www.update username home and profile, edit password',
              style: S12.copyWith(color: black.withOpacity(0.5)),
            ),
          ),
          whiteSpace(height: 10),
          SizedBox(
            child: Row(
              children: [
                SizedBox(
                  height: 26,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Approve',
                      style: R12,
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(black),
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                whiteSpace(width: 23),
                SizedBox(
                  height: 26,
                  child: OutlinedButton(
                    child: Text(
                      'Reject',
                      style: R12,
                    ),
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(black),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          side: BorderSide(width: 2, color: black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
