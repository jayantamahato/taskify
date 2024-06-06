import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/colors/color.dart';
import '../../../../core/theme/font.dart';
import '../../../../utils/size.dart';
import '../../../../utils/white_space.dart';

AlertDialog information({required BuildContext context}) => AlertDialog(
      insetPadding: EdgeInsets.all(10),
      content: Container(
        width: percentWidth(context: context),
        height: percentHeight(context: context, height: 23),
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
                    'Information',
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
              'Processing & completed task can not be modify',
              style: M14,
            ),
            whiteSpace(height: 29),
            SizedBox(
              child: Column(
                children: [
                  SizedBox(
                    width: percentWidth(context: context),
                    child: OutlinedButton(
                      child: Text('Okay'),
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
