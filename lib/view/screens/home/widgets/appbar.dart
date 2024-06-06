import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../core/colors/color.dart';
import '../../../../core/theme/font.dart';
import '../../../../utils/size.dart';

AppBar homeAppBar({required BuildContext context}) {
  return AppBar(
    toolbarHeight: 60,
    leadingWidth: percentWidth(context: context, width: 70),
    leading: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Good Morning, Kyle!',
            style: R12.copyWith(color: black.withOpacity(0.5)),
          ),
          Text(
            'Let’s Start your task',
            style: B16,
          ),
        ],
      ),
    ),
    bottom: TabBar(
      dividerColor: grey,
      indicatorColor: black,
      unselectedLabelColor: black.withOpacity(0.5),
      labelColor: black,
      indicatorSize: TabBarIndicatorSize.tab,
      overlayColor: MaterialStatePropertyAll(grey),
      tabs: [Tab(text: "Today"), Tab(text: "History")],
    ),
    actions: [
      InkWell(
        onTap: () {
          Get.toNamed('/notification');
        },
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(right: 20),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: grey.withOpacity(0.5)),
          child: Badge(
              textColor: error,
              backgroundColor: error,
              child: SvgPicture.asset('assets/icons/notification.svg')),
        ),
      )
    ],
  );
}
