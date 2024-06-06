import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/navigation_controller.dart';
import '../account/account_screen.dart';
import '../home/home_screen.dart';
import '../projects/project_screen.dart';
import '../timeline/timeline.dart';
import 'widgets/bottom_navbar.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final NavController _navController = Get.put(NavController());

  final List<Widget> screens = [
    HomeScreen(),
    ProjectScreen(),
    HomeScreen(),
    TimelineScreen(),
    AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => screens[_navController.currentIndex.value]),
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
