import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../controller/navigation_controller.dart';
import '../../../../core/colors/color.dart';
import '../../../../core/theme/font.dart';

class CustomNavbar extends StatelessWidget {
  CustomNavbar({super.key});

  final NavController _navController = Get.put(NavController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 95,
        child: BottomNavigationBar(
          enableFeedback: true,
          type: BottomNavigationBarType.fixed,
          currentIndex: _navController.currentIndex.value,
          onTap: (index) {
            if (index == 2) {
              null;
              return;
              //open create task pop up
            }
            _navController.changeScreen(index: index);
          },
          elevation: 2,
          selectedItemColor: black,
          unselectedItemColor: black.withOpacity(0.5),
          showUnselectedLabels: true,
          selectedLabelStyle: SB10,
          unselectedLabelStyle: SB10,
          items: [
            item(icon: 'assets/icons/home.svg', name: 'Home'),
            item(name: 'Projects', icon: 'assets/icons/project.svg'),
            specialItem(),
            item(name: 'Timeline', icon: 'assets/icons/calender.svg'),
            item(name: 'Account', icon: 'assets/icons/account.svg')
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem item({required String icon, required String name}) {
    return BottomNavigationBarItem(
        activeIcon: SizedBox(
          height: 20,
          width: 20,
          child: SvgPicture.asset(
            icon,
            color: black,
          ),
        ),
        label: name,
        icon: SizedBox(
          height: 20,
          width: 20,
          child: SvgPicture.asset(icon),
        ));
  }

  BottomNavigationBarItem specialItem() {
    return BottomNavigationBarItem(
        label: '',
        icon: Container(
          height: 58,
          width: 58,
          margin: EdgeInsets.all(5),
          child: SvgPicture.asset('assets/icons/add.svg'),
        ));
  }
}
