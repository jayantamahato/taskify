import 'package:get/get.dart';

class NavController extends GetxController {
  RxInt currentIndex = 0.obs;

  void changeScreen({required int index}) {
    currentIndex(index);
  }
}
