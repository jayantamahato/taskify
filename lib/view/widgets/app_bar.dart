import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/theme/font.dart';

AppBar customAppBar(
    {required String screenName, required BuildContext context}) {
  return AppBar(
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
    title: Text(
      screenName,
      style: SB16,
    ),
  );
}
