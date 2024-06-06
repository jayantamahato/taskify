import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../controller/navigation_controller.dart';
import '../../../controller/task_controller.dart';
import '../../../core/colors/color.dart';
import '../../../core/theme/font.dart';
import '../account/account_screen.dart';
import '../home/home_screen.dart';
import '../projects/project_screen.dart';
import '../timeline/timeline.dart';
import 'widgets/bottom_navbar.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final NavController _navController = Get.put(NavController());
  final TaskController _taskController = Get.put(TaskController());

  final List<Widget> screens = [
    HomeScreen(),
    ProjectScreen(),
    HomeScreen(),
    TimelineScreen(),
    AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text('Warning'),
                  content: Text('Are you want to exit the app?'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          SystemNavigator.pop();
                        },
                        child: Text(
                          'Yes',
                          style: SB12.copyWith(color: success),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'No',
                          style: SB12.copyWith(color: error),
                        ))
                  ],
                ));
      },
      child: Scaffold(
        body: Obx(() => screens[_navController.currentIndex.value]),
        bottomNavigationBar: CustomNavbar(
            navController: _navController, taskController: _taskController),
      ),
    );
  }
}
