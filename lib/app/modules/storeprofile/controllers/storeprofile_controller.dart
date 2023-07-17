
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreprofileController extends GetxController {
  RxBool isChecked = false.obs;
  RxBool isChecked1 = false.obs;
  RxBool isChecked2 = false.obs;
  RxBool isChecked3 = false.obs;
  RxBool isChecked4 = false.obs;
  RxBool isChecked5 = false.obs;
  RxBool isChecked6 = false.obs;
  RxBool isChecked7 = false.obs;
  RxBool isChecked8 = false.obs;
  RxBool isChecked9 = false.obs;
  RxBool isChecked10 = false.obs;
  RxBool isChecked11 = false.obs;
  RxBool isChecked12 = false.obs;
  RxBool isChecked13 = false.obs;
  Rx<Color> textColor = Colors.orange.obs;
  Rx<Color> checkboxColor = Colors.orange.obs;
  var notificationCount = 0.obs;

  void incrementNotificationCount() {
    notificationCount++;
  }

  void toggleCheckbox() {
    isChecked.value = !isChecked.value;
  }
  void toggle1Checkbox() {
    isChecked1.value = !isChecked1.value;
  }
  void toggle2Checkbox() {
    isChecked2.value = !isChecked2.value;
  }
  void toggle3Checkbox() {
    isChecked3.value = !isChecked3.value;
  }
  void toggle4Checkbox() {
    isChecked4.value = !isChecked4.value;
  }
  void toggle5Checkbox() {
    isChecked5.value = !isChecked5.value;
  }
  void toggle6Checkbox() {
    isChecked6.value = !isChecked6.value;
  }
  void toggle7Checkbox() {
    isChecked7.value = !isChecked7.value;
  }
  void toggle8Checkbox() {
    isChecked5.value = !isChecked8.value;
  }
  void toggle9Checkbox() {
    isChecked9.value = !isChecked9.value;
  }
  void toggle11Checkbox() {
    isChecked11.value = !isChecked11.value;
  }
  void toggle10Checkbox() {
    isChecked10.value = !isChecked10.value;
  }
  void toggle12Checkbox() {
    isChecked12.value = !isChecked12.value;
  }
  void toggle13Checkbox() {
    isChecked13.value = !isChecked13.value;
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
