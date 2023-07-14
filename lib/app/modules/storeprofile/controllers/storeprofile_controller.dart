
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreprofileController extends GetxController {
  RxBool isChecked = false.obs;
  Rx<Color> textColor = Colors.orange.obs;
  Rx<Color> checkboxColor = Colors.orange.obs;

  void toggleCheckbox() {
    isChecked.value = !isChecked.value;
  }


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
