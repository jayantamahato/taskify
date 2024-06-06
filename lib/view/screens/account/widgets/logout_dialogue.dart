import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/colors/color.dart';
import '../../../../core/theme/font.dart';
import '../../../../utils/size.dart';
import '../../../../utils/white_space.dart';

AlertDialog logoutDialogue({required BuildContext context}) => AlertDialog(
      insetPadding: EdgeInsets.all(10),
      content: Container(
        width: percentWidth(context: context),
        height: percentHeight(context: context, height: 30),
        child: Column(
          children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Text(
                    'Logout',
                    style: M14,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SvgPicture.asset('assets/icons/close.svg'),
                  )
                ],
              ),
            ),
            whiteSpace(height: 27),
            Text(
              'Are You sure you want to logout?',
              style: M14,
            ),
            whiteSpace(height: 29),
            SizedBox(
              child: Column(
                children: [
                  SizedBox(
                    width: percentWidth(context: context),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Yes'),
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
                  whiteSpace(height: 27),
                  SizedBox(
                    width: percentWidth(context: context),
                    child: OutlinedButton(
                      child: Text('No'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
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
      ),
    );
