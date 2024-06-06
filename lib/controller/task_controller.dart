import 'package:get/get.dart';

class TaskController extends GetxController {
  RxString selectedDay = 'Today'.obs;
  RxString selectedProject = ''.obs;
  RxString selectedTask = ''.obs;
  RxInt selectedTime = 2.obs;
  RxInt selectedPoint = 2.obs;
}
