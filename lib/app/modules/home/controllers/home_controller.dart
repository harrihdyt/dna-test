import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentInde = 0.obs;

  void selectIndex(int index) {
    currentInde.value = index;
  }
}
