import 'package:get/get.dart';

class BottomNavController extends GetxController {
  RxInt selectedIndex = 0.obs;

  void selectDestination(int index) {
    selectedIndex.value = index;
  }

}


