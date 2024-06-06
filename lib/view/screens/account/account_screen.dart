import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/colors/color.dart';
import '../../../core/theme/font.dart';
import '../../../utils/size.dart';
import '../../../utils/white_space.dart';
import 'widgets/logout_dialogue.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: percentHeight(context: context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            whiteSpace(height: percentHeight(context: context, height: 18)),
            Text(
              'Kyle Calica',
              style: B16,
            ),
            Text(
              'nathan@mvp-apps.com',
              style: R12,
            ),
            whiteSpace(height: 50),
            Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: grey.withOpacity(0.4),
                        blurRadius: 10,
                        spreadRadius: 1)
                  ],
                  borderRadius: BorderRadius.circular(5)),
              padding: EdgeInsets.all(9),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed('/notification');
                    },
                    child: ListTile(
                      leading:
                          SvgPicture.asset('assets/icons/notification.svg'),
                      title: Text(
                        'Notifications',
                        style: M12,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                    child: Divider(
                      color: grey.withOpacity(0.5),
                    ),
                  ),
                  ListTile(
                    leading: SvgPicture.asset('assets/icons/night.svg'),
                    title: Text(
                      'Dark Mode',
                      style: M12,
                    ),
                    trailing: SizedBox(
                      height: 40,
                      width: 40,
                      child:
                          CupertinoSwitch(value: false, onChanged: (value) {}),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                    child: Divider(
                      color: grey.withOpacity(0.5),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) =>
                              logoutDialogue(context: context));
                    },
                    child: ListTile(
                      leading: SvgPicture.asset('assets/icons/login.svg'),
                      title: Text(
                        'Logout',
                        style: M12,
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
  }
}
