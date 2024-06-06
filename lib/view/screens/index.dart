import 'account/account_screen.dart';
import 'login/login.dart';
import 'main/main_screen.dart';
import 'notification/notification_screen.dart';
import 'projects/project_screen.dart';
import 'task_details/task_details.dart';

class AppScreen {
  AccountScreen accountScreen = AccountScreen();
  LoginScreen loginScreen = const LoginScreen();
  MainScreen mainScreen = MainScreen();
  TaskDetails taskDetails = TaskDetails();
  NotificationScreen notificationScreen = NotificationScreen();
  ProjectScreen projectScreens = ProjectScreen();
}
