import 'package:get/get.dart';

import '../view/screens/index.dart';

class AppRoute {
  static AppScreen _appScreen = AppScreen();
  static List<GetPage<dynamic>> routes() {
    return [
      GetPage(
        page: () => _appScreen.loginScreen,
        name: '/login',
        transition: Transition.cupertino,
      ),
      GetPage(
        page: () => _appScreen.mainScreen,
        name: '/main',
        transition: Transition.cupertino,
      ),
      GetPage(
        page: () => _appScreen.notificationScreen,
        name: '/notification',
        transition: Transition.cupertino,
      ),
      GetPage(
        page: () => _appScreen.taskDetails,
        name: '/task-details',
        transition: Transition.cupertino,
      ),
    ];
  }
}
